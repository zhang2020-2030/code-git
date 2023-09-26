
$(function () {
    map();
    function map() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('map_1'));
var data = [
     {name: '哈尔滨', value: 229},
     {name: '齐齐哈尔', value: 200},
     {name: '牡丹江', value: 200},
     {name: '佳木斯', value: 200},
     {name: '大庆', value: 200},
     {name: '绥化', value: 200},
     {name: '伊春', value: 200},
     {name: '鸡西', value: 200},
     {name: '鹤岗', value: 200},
     {name: '双鸭山', value: 200},
     {name: '七台河', value: 200},
     {name: '黑河', value: 200},
     {name: '大兴安岭', value: 200}
];
var geoCoordMap = {
    '哈尔滨':[126.63,45.75],
    '齐齐哈尔':[123.97,47.33],
    '牡丹江':[129.58,44.6],
    '佳木斯':[130.318878,46.799777],
    '大庆':[124.9,46.593216],
    '绥化':[127.5, 47],
    '伊春':[128.899396,47.724775],
    '鸡西':[130.969333,45.295075],
    '鹤岗':[130.276652,47.337371],
    '双鸭山':[131.151603,46.655102],
    '七台河':[131.003138,45.771266],
    '黑河':[127.499023,49.2],
    '大兴安岭':[123.8,52.249585]
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
        text: '预测地市移动用户容量',
        subtext: '',
        sublink: 'https://gitee.com/iGaoWei/big-data-view',
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
            name: '预期接入量',
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
		
		/**
		,
        {
            name: 'Top 5',
            type: 'effectScatter',
            coordinateSystem: 'geo',
            data: convertData(data.sort(function (a, b) {
                return b.value - a.value;
            }).slice(0, 6)),
            symbolSize: function (val) {
                return val[2] / 20;
            },
            showEffectOn: 'render',
            rippleEffect: {
                brushType: 'stroke'
            },
            hoverAnimation: true,
            label: {
                normal: {
                    formatter: '{b}',
                    position: 'right',
                    show: true
                }
            },
            itemStyle: {
                normal: {
                    color: '#ffd800',
                    shadowBlur: 10,
                    shadowColor: 'rgba(0,0,0,.3)'
                }
            },
            zlevel: 1
        }
		**/
    ]
};
		
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
    }

})

