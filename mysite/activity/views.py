from django.shortcuts import render, HttpResponse
from activity.models import Activity
from activity.models import ActivityType
from activity.models import ActivityCity
from activity.models import ActivityAll
from activity.models import AccessQuantityAll
from activity.models import AccessQuantityCity
from activity.models import AlertMessageAll
import pandas as pd
import json
# Create your views here.
def index_handler(request):
    return render(request, 'index.html')

def createTypeList(df):
    groupObj = df.groupby("type").size()
    print(groupObj)
    groupObj = groupObj.reindex(["演唱会", "话剧歌剧", "体育", "儿童亲子", "展览休闲", "音乐会", "曲苑杂坛", "舞蹈芭蕾", "二次元", "旅游展览"])
    groupObj.fillna(value=0, inplace=True)
    groupObj = groupObj.astype(int)
    groupObj.index = ['演唱会', '话歌', '体育', '儿童', '展览', '音乐会', '曲苑', '舞蹈', '二次元', '旅游']
    print(groupObj)
    return groupObj.values.tolist()

def createCitySession(df):
    # 将两列转换为字典列表
    df['session'] = df['session'].astype(int)
    dict_list = df[['city', 'session']].to_dict(orient='records')
    return dict_list
def createAlertlist(df):
    new_obj = {key: int(value) for key, value in df[0].items()}
    return new_obj

def convert_to_int(value):
    try:
        return int(value)
    except:
        return value
def getAllData(request):
    msg = request.POST["msg"]
    print(msg)
    #查第一、第二个表
    alldata = Activity.objects.all()
    listData = list(alldata.values())
    # 查第三个表
    chart3data = ActivityType.objects.all()
    chart3Data = list(chart3data.values())
    # 查第四个表
    chart4data = AccessQuantityAll.objects.all()
    chart4Data = list(chart4data.values())
    #查第五个表
    chart5data = AlertMessageAll.objects.all()
    chart5Data = list(chart5data.values())
    #查第六个表
    chart6data = ActivityAll.objects.all()
    chart6Data = list(chart6data.values())


    # 处理第一、二个表数据，第一表数据：dictData，第二表数据：chart2List
    df = pd.DataFrame(listData)
    dictData = df.to_dict("records")
    chart2List = createTypeList(df)
    # 处理第三个表数据,包含31、32、33
    chart3df = pd.DataFrame(chart3Data)
    ch31 = chart3df[chart3df.type == "演唱会"]
    ch32 = chart3df[chart3df.type == "音乐会"]
    ch33 = chart3df[chart3df.type == "体育"]
    chart31List = createCitySession(ch31)
    chart32List = createCitySession(ch32)
    chart33List = createCitySession(ch33)
    # 处理第四个表数据
    chart4df = pd.DataFrame(chart4Data)
    chart4df = chart4df.applymap(convert_to_int)
    chart4dict = chart4df.to_dict("records")
    print("chart4dict")
    print(chart4dict)
    # 处理第五个表数据
    chart5df = pd.DataFrame(chart5Data)
    chart5dict = chart5df.to_dict("records")
    chart5List = createAlertlist(chart5dict)
    print("chart5List")
    print(chart5List)
    #处理第六个表数据，与第二个数据相同

    resDict = dict()
    resDict["ok"] = True
    resDict["chart1Data"] = dictData
    resDict["chart2Data"] = chart2List
    resDict["chart31Data"] = chart31List
    resDict["chart32Data"] = chart32List
    resDict["chart33Data"] = chart33List
    resDict["chart4Data"] = chart4dict
    resDict["chart5Data"] = chart5List
    resDict["chart6Data"] = chart2List

    return HttpResponse(json.dumps(resDict, ensure_ascii=False))

def getCityInfo(request):
    #处理数据城市名与echarts名称差异
    city = request.POST["city"]
    cityStrLen = len(city)
    cityKey = city[:cityStrLen-1] if cityStrLen<6 else city[:cityStrLen-2]

    #用城市名查第一、第二个表
    cityData = Activity.objects.filter(city=cityKey)
    listData = list(cityData.values())
    # 用城市名查第四个表
    cityData4 = AccessQuantityCity.objects.filter(city=cityKey)
    listData4 = list(cityData4.values())

    #处理第一、二个表数据
    df = pd.DataFrame(listData)
    dictData = df.to_dict("records")
    #第二个图数据
    if df.size == 0:
        chart2List = [0 for i in range(10)]
    else:
        chart2List = createTypeList(df)
    # 处理第四个表数据
    df4 = pd.DataFrame(listData4)
    print("df4")
    print(df4)
    df4 = df4.applymap(convert_to_int)
    print("df4")
    print(df4)
    chart4dict = df4.to_dict("records")
    print("chart4dict")
    print(chart4dict)
    resDict = {}
    resDict["ok"] = True
    resDict["chart1Data"] = dictData
    resDict["chart2Data"] = chart2List
    resDict["chart4Data"] = chart4dict
    resDict["chart6Data"] = chart2List
    return HttpResponse(json.dumps(resDict, ensure_ascii=False))