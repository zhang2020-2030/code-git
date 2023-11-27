function clearAllRows(){
    $("table.table1>tbody").empty();
}

function createRow(a){
    $("table.table1>tbody").append("<tr></tr><td>"+a.type+"</td>\n" +
                " <td><span class=\"text-w\">"+a.time+"</span></td>\n" +
                "<td><span class=\"text-b\">"+a.activity+"</span></td>\n" +
                "<td><div class=\"text-d\">"+a.addr+"</div></td>\n" +
                "<td><div class=\"text-d\">"+a.city+"</div></td>\n" +
                "<td><div class=\"text-d\">"+a.p_number+"</div></td></tr>")
}




$(function () {
    map();
    function get_city_info(city) {
        paramData = {};
        paramData["city"] = city;
        $.ajax({
            url:"get_city_info/",
            type:"POST",
            data:paramData,
            success:function(data){
                jsonObj = JSON.parse(data);
                clearAllRows();
                //左一点击地市结果
                arr = jsonObj.chart1Data;
                arr.forEach(function(item,index,arr){
                    createRow(item);
                });
                //左二点击地市结果
                chart2Option = chart2.getOption();
                chart2Option.series[0].data = jsonObj.chart2Data;
                chart2.setOption(chart2Option);
                //右一点击城市结果
                chart4Option = chart4.getOption();
                chart4Option.series[0].data = jsonObj.chart4Data.map(item => item['norm']);
                chart4Option.series[1].data = jsonObj.chart4Data.map(item => item['predict']);
                chart4.setOption(chart4Option);
                //更新中心数字
                var firstLiElement = document.getElementById("firstLi");
                var secondLiElement = document.getElementById("secondLi");
                firstLiElement.textContent = chart4Option.series[0].data[4];
                secondLiElement.textContent = chart4Option.series[1].data[4];
                //右三点击城市结果
                chart6Option = chart6.getOption();
                chart6Option.series.forEach(function(element, index) {
                    chart6Option.series[index].data[0].value = jsonObj.chart6Data[index];
                });
                chart6.setOption(chart6Option);
            }
        })
    }

    function map() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('map_1'));
        var data = [
             {name: '哈尔滨市', value: 229},
             {name: '齐齐哈尔市', value: 200},
             {name: '牡丹江市', value: 200},
             {name: '佳木斯市', value: 200},
             {name: '大庆市', value: 200},
             {name: '绥化市', value: 200},
             {name: '伊春市', value: 200},
             {name: '鸡西市', value: 200},
             {name: '鹤岗市', value: 200},
             {name: '双鸭山市', value: 200},
             {name: '七台河市', value: 200},
             {name: '黑河市', value: 200},
             {name: '大兴安岭地区', value: 200}
        ];
        var geoCoordMap = {
            '哈尔滨市':[126.63,45.75],
            '齐齐哈尔市':[123.97,47.33],
            '牡丹江市':[129.58,44.6],
            '佳木斯市':[130.318878,46.799777],
            '大庆市':[124.9,46.593216],
            '绥化市':[127.5, 47],
            '伊春市':[128.899396,47.724775],
            '鸡西市':[130.969333,45.295075],
            '鹤岗市':[130.276652,47.337371],
            '双鸭山市':[131.151603,46.655102],
            '七台河市':[131.003138,45.771266],
            '黑河市':[127.499023,49.2],
            '大兴安岭地区':[123.8,52.249585]
        };
var convertData = function (data) {
    var res = [];
    for (var i = 0; i < data.length; i++) {
        var geoCoord = geoCoordMap[data[i].name];
        if (geoCoord) {
            res.push({
                name: data[i].name,
                value: geoCoord.concat(data[i].value)
            });
        }
    }
    return res;
};

option = {
   // backgroundColor: '#404a59',
    title: {
        text: '',
        subtext: '',
        sublink: '',
        left: 'center',
        textStyle: {
            color: '#fff'
        }
    },
    tooltip : {
        trigger: 'item',
		formatter: function (params) {
              if(typeof(params.value)[2] == "undefined"){
              	return params.name + ' : ' + params.value;
              }else{
              	return params.name + ' : ' + params.value[2];
              }
            }
    },
  
    geo: {
        map: 'heilongjiang',
        label: {
            emphasis: {
                show: false
            }
        },
        roam: false,//禁止其放大缩小
        itemStyle: {
            normal: {
                areaColor: '#4c60ff',
                borderColor: '#002097'
            },
            emphasis: {
                areaColor: '#293fff'
            }
        }
    },
    series : [
        {
            name: '消费金额',
            type: 'scatter',
            coordinateSystem: 'geo',
            data: convertData(data),
            symbolSize: function (val) {
                return val[2] / 15;
            },
            label: {
                normal: {
                    formatter: '{b}',
                    position: 'right',
                    show: false
                },
                emphasis: {
                    show: true
                }
            },
            itemStyle: {
                normal: {
                    color: '#ffeb7b'
                }
            }
        }
	]
};
		myChart.setOption(option);
        myChart.on("click", function (params) {
            get_city_info(params.name);
        });
        window.addEventListener("resize",function(){
            myChart.resize();
        });
    }
})

