chart2 = null;
chart31 = null;
chart32 = null;
chart33 = null;
chart4 = null;
chart5 = null;
chart6 = null;
$(function () {
    //echarts_1();
    chart2 = echarts_2();
    chart4 = echarts_4();
    chart31 = echarts_31();
    chart32 = echarts_32();
    chart33 = echarts_33();
    chart5 = echarts_5();
    chart6 = echarts_6();
    function echarts_1() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('echart1'));
        option = {
            //backgroundColor: '#00265f',
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            grid: {
                left: '0%',
                top:'10px',
                right: '0%',
                bottom: '4%',
               containLabel: true
            },
            xAxis: [{
                type: 'category',
                    data: ['商超门店', '教育培训', '房地产', '生活服务', '汽车销售', '旅游酒店', '五金建材'],
                axisLine: {
                    show: true,
                 lineStyle: {
                        color: "rgba(255,255,255,.1)",
                        width: 1,
                        type: "solid"
                    },
                },

                axisTick: {
                    show: false,
                },
                axisLabel:  {
                        interval: 0,
                       // rotate:50,
                        show: true,
                        splitNumber: 15,
                        textStyle: {
                            color: "rgba(255,255,255,.6)",
                            fontSize: '12',
                        },
                    },
            }],
            yAxis: [{
                type: 'value',
                axisLabel: {
                   //formatter: '{value} %'
                    show:true,
                     textStyle: {
                            color: "rgba(255,255,255,.6)",
                            fontSize: '12',
                        },
                },
                axisTick: {
                    show: false,
                },
                axisLine: {
                    show: true,
                    lineStyle: {
                        color: "rgba(255,255,255,.1	)",
                        width: 1,
                        type: "solid"
                    },
                },
                splitLine: {
                    lineStyle: {
                       color: "rgba(255,255,255,.1)",
                    }
                }
            }],
            series: [{
                type: 'bar',
                data: [200, 300, 300, 900, 1500, 1200, 600],
                barWidth:'35%', //柱子宽度
               // barGap: 1, //柱子之间间距
                itemStyle: {
                    normal: {
                        color:'#2f89cf',
                        opacity: 1,
                        barBorderRadius: 5,
                    }
                }
            }]
        };
      
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
    }
    function echarts_2() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('echart2'));
        option = {
          //  backgroundColor: '#00265f',
            tooltip: {
                trigger: 'axis',
                axisPointer: { type: 'shadow'}
            },
            grid: {
                left: '0%',
                top:'10px',
                right: '0%',
                bottom: '4%',
               containLabel: true
            },
            xAxis: [{
                type: 'category',
                data: ['演唱会', '话歌', '体育', '儿童', '展览', '音乐会', '曲苑','舞蹈', '二次元', '旅游'],
                axisLine: {
                    show: true,
                    lineStyle: {
                        color: "rgba(255,255,255,.1)",
                        width: 1,
                        type: "solid"
                    },
                },
                axisTick: {
                    show: false,
                },
                axisLabel:  {
                        interval: 0,
                       // rotate:50,
                        show: true,
                        splitNumber: 15,
                        textStyle: {
                            color: "rgba(255,255,255,.6)",
                            fontSize: '12',
                        },
                    },
            }],
            yAxis: [{
                type: 'value',
                axisLabel: {
                   //formatter: '{value} %'
                    show:true,
                     textStyle: {
                            color: "rgba(255,255,255,.6)",
                            fontSize: '12',
                        },
                },
                axisTick: {
                    show: false,
                },
                axisLine: {
                    show: true,
                    lineStyle: {
                        color: "rgba(255,255,255,.1	)",
                        width: 1,
                        type: "solid"
                    },
                },
                splitLine: {
                    lineStyle: {
                       color: "rgba(255,255,255,.1)",
                    }
                }
            }],
            series: [{
                type: 'bar',
                data: [20, 19, 18, 17, 16, 15, 14, 13, 12, 11],
                barWidth:'35%', //柱子宽度
               // barGap: 1, //柱子之间间距
                itemStyle: {
                    normal: {
                        color:'#27d08a',
                        opacity: 1,
                        barBorderRadius: 5,
                    }
                }
            }]
        };
      
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
        return myChart;
    }
    function echarts_5() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('echart5'));
        option = {
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            grid: {
                left: '0%',
		        top:'10px',
                right: '0%',
                bottom: '2%',
                containLabel: true
            },
            xAxis: [{
                type: 'category',
      		    data: ['正常','告警', '异常'],
                axisLine: {
                    show: true,
                    lineStyle: {
                        color: "rgba(255,255,255,.1)",
                        width: 0,
                        type: "solid"
                    },
                },
		        axisTick: {
                    show: false,
                },
		        axisLabel:  {
                    interval: 0,
                    // rotate:50,
                    show: true,
                    splitNumber: 15,
                    textStyle: {
 					    color: "rgba(255,255,255,.6)",
                        fontSize: '12',
                    },
                },
            }],
            yAxis: [{
                type: 'value',
                axisLabel: {
                //formatter: '{value} %'
			        show:true,
			        textStyle: {
 					    color: "rgba(255,255,255,.6)",
                        fontSize: '12',
                    },
                },
                axisTick: {
                    show: false,
                },
                axisLine: {
                    show: true,
                    lineStyle: {
                        color: "rgba(255,255,255,.1	)",
                        width: 1,
                        type: "solid"
                    },
                },
                splitLine: {
                    lineStyle: {
                        color: "rgba(255,255,255,.1)",
                    }
                }
            }],
            series: [{
                type: 'bar',
                data: [ ,6,],
                barWidth:'25%', //柱子宽度
                barGap: 1, //柱子之间间距
                itemStyle: {
                    normal: {
                        color:'#27d08a',//绿色
                        opacity: 1,
				        barBorderRadius: 3,
                    }
                }
            },{
                type: 'bar',
                data: [,3,],
                barWidth:'25%', //柱子宽度
                 barGap: 1, //柱子之间间距
                itemStyle: {
                    normal: {
                        color:'#FFFF66',//黄色
                        opacity: 1,
				        barBorderRadius: 3,
                    }
                }
            },{
                type: 'bar',
                data: [,1,],
                barWidth:'25%', //柱子宽度
                barGap: 1, //柱子之间间距
                itemStyle: {
                    normal: {
                        color:'#FF3300',//红色
                        opacity: 1,
				        barBorderRadius: 3,
                    }
                }
            }]
        };
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
        return myChart;
    }
	
    function echarts_4() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('echart4'));
        option = {
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        lineStyle: {
                            color: '#dddc6b'
                        }
                    }
                },
                legend: {
                    top:'0%',
                    data:['实际容量','预测容量'],
                            textStyle: {
                       color: 'rgba(255,255,255,.5)',
                        fontSize:'12',
                    }
                },
                grid: {
                    left: '10',
                    top: '30',
                    right: '10',
                    bottom: '10',
                    containLabel: true
                },
                xAxis: [{
                    type: 'category',
                    boundaryGap: false,
                    axisLabel:  {
                            textStyle: {
                                color: "rgba(255,255,255,.6)",
                                fontSize:12,
                            },
                        },
                    axisLine: {
                        lineStyle: {
                            color: 'rgba(255,255,255,.2)'
                        }

                    },
                    data: ['第一天', '第二天', '第三天', '第四天', '第五天']
                }, {
                    axisPointer: {show: false},
                    axisLine: {  show: false},
                    position: 'bottom',
                    offset: 20,
                }],
                yAxis: [{
                    type: 'value',
                    axisTick: {show: false},
                    axisLine: {
                        lineStyle: {
                            color: 'rgba(255,255,255,.1)'
                        }
                    },
                   axisLabel:  {
                            textStyle: {
                                color: "rgba(255,255,255,.6)",
                                fontSize:12,
                            },
                        },

                    splitLine: {
                        lineStyle: {
                             color: 'rgba(255,255,255,.1)'
                        }
                    }
                }],
                series: [{
                    name: '实际容量',
                    type: 'line',
                     smooth: true,
                    symbol: 'circle',
                    symbolSize: 5,
                    showSymbol: false,
                    lineStyle: {

                        normal: {
                            color: '#0184d5',
                            width: 2
                        }
                    },
                    areaStyle: {
                        normal: {
                            color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                                offset: 0,
                                color: 'rgba(1, 132, 213, 0.4)'
                            }, {
                                offset: 0.8,
                                color: 'rgba(1, 132, 213, 0.1)'
                            }], false),
                            shadowColor: 'rgba(0, 0, 0, 0.1)',
                        }
                    },
                        itemStyle: {
                        normal: {
                            color: '#0184d5',
                            borderColor: 'rgba(221, 220, 107, .1)',
                            borderWidth: 12
                        }
                    },
                    data: [200,180,116,115,117]
                },
                {
                    name: '预测容量',
                    type: 'line',
                    smooth: true,
                    symbol: 'circle',
                    symbolSize: 5,
                    showSymbol: false,
                    lineStyle: {

                        normal: {
                            color: '#00d887',
                            width: 2
                        }
                    },
                    areaStyle: {
                        normal: {
                            color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                                offset: 0,
                                color: 'rgba(0, 216, 135, 0.4)'
                            }, {
                                offset: 0.8,
                                color: 'rgba(0, 216, 135, 0.1)'
                            }], false),
                            shadowColor: 'rgba(0, 0, 0, 0.1)',
                        }
                    },
                        itemStyle: {
                        normal: {
                            color: '#00d887',
                            borderColor: 'rgba(221, 220, 107, .1)',
                            borderWidth: 12
                        }
                    },
                    data: [420,340,311,140,148]
                }]
         };
      
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
        return myChart;
    }
    function echarts_6() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('echart6'));
        var dataStyle = {
            normal: {
                label: {
                    show: false
                },
                labelLine: {
                    show: false
                },
                //shadowBlur: 40,
                //shadowColor: 'rgba(40, 40, 40, 1)',
            }
        };
        var placeHolderStyle = {
                normal: {
                color: 'rgba(255,255,255,.05)',
                label: {show: false,},
                labelLine: {show: false}
            },
            emphasis: {
                color: 'rgba(0,0,0,0)'
            }
        };
        option = {
            color: ['#0f63d6', '#0f78d6', '#0f8cd6', '#0fa0d6', '#0fb4d6'],
            tooltip: {
                show: true,
                formatter: "{a} : {c} "
            },
            legend: {
                itemWidth: 10,
                itemHeight: 7,
                itemGap: 10,
                bottom: '-4',
                data: ['演唱会', '话歌', '体育', '儿童', '展览', '音乐会', '曲苑','舞蹈', '二次元', '旅游'],
                textStyle: {
                            color: 'rgba(255,255,255,.6)',
                        }
            },

            series: [
                {
                name: '演唱会',
                type: 'pie',
                clockWise: false,
                center: ['50%', '42%'],
                radius: ['63%', '70%'],
                itemStyle: dataStyle,
                hoverAnimation: false,
                data: [{
                    value: 80,
                    name: '01'
                }, {
                    value: 20,
                    name: 'invisible',
                    tooltip: {show: false},
                    itemStyle: placeHolderStyle
                }]
            }, {
                name: '话歌',
                type: 'pie',
                clockWise: false,
                center: ['50%', '42%'],
                radius: ['57%', '64%'],
                itemStyle: dataStyle,
                hoverAnimation: false,
                data: [{
                    value: 70,
                    name: '02'
                }, {
                    value: 30,
                    name: 'invisible',
                    tooltip: {show: false},
                    itemStyle: placeHolderStyle
                }]
            }, {
                name: '体育',
                type: 'pie',
                clockWise: false,
                hoverAnimation: false,
                center: ['50%', '42%'],
                radius: ['51%', '58%'],
                itemStyle: dataStyle,
                data: [{
                    value: 65,
                    name: '03'
                }, {
                    value: 35,
                    name: 'invisible',
                    tooltip: {show: false},
                    itemStyle: placeHolderStyle
                }]
            }, {
                name: '儿童',
                type: 'pie',
                clockWise: false,
                hoverAnimation: false,
                center: ['50%', '42%'],
                radius: ['45%', '52%'],
                itemStyle: dataStyle,
                data: [{
                    value: 60,
                    name: '04'
                }, {
                    value: 40,
                    name: 'invisible',
                    tooltip: {show: false},
                    itemStyle: placeHolderStyle
                }]
            }, {
                name: '展览',
                type: 'pie',
                clockWise: false,
                hoverAnimation: false,
                center: ['50%', '42%'],
                radius: ['39%', '46%'],
                itemStyle: dataStyle,
                data: [{
                    value: 50,
                    name: '05'
                }, {
                    value: 50,
                    name: 'invisible',
                    tooltip: {show: false},
                    itemStyle: placeHolderStyle
                }]
            }, {
                name: '音乐会',
                type: 'pie',
                clockWise: false,
                hoverAnimation: false,
                center: ['50%', '42%'],
                radius: ['33%', '40%'],
                itemStyle: dataStyle,
                data: [{
                    value: 50,
                    name: '05'
                }, {
                    value: 50,
                    name: 'invisible',
                    tooltip: {show: false},
                    itemStyle: placeHolderStyle
                }]
            }, {
                name: '曲苑',
                type: 'pie',
                clockWise: false,
                hoverAnimation: false,
                center: ['50%', '42%'],
                radius: ['27%', '34%'],
                itemStyle: dataStyle,
                data: [{
                    value: 50,
                    name: '05'
                }, {
                    value: 50,
                    name: 'invisible',
                    tooltip: {show: false},
                    itemStyle: placeHolderStyle
                }]
            }, {
                name: '舞蹈',
                type: 'pie',
                clockWise: false,
                hoverAnimation: false,
                center: ['50%', '42%'],
                radius: ['21%', '28%'],
                itemStyle: dataStyle,
                data: [{
                    value: 50,
                    name: '05'
                }, {
                    value: 50,
                    name: 'invisible',
                    tooltip: {show: false},
                    itemStyle: placeHolderStyle
                }]
            }, {
                name: '二次元',
                type: 'pie',
                clockWise: false,
                hoverAnimation: false,
                center: ['50%', '42%'],
                radius: ['15%', '22%'],
                itemStyle: dataStyle,
                data: [{
                    value: 50,
                    name: '05'
                }, {
                    value: 50,
                    name: 'invisible',
                    tooltip: {show: false},
                    itemStyle: placeHolderStyle
                }]
            }, {
                name: '旅游',
                type: 'pie',
                clockWise: false,
                hoverAnimation: false,
                center: ['50%', '42%'],
                radius: ['9%', '16%'],
                itemStyle: dataStyle,
                data: [{
                    value: 50,
                    name: '05'
                }, {
                    value: 50,
                    name: 'invisible',
                    tooltip: {show: false},
                    itemStyle: placeHolderStyle
                }]
            }]
        };
      
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
        return myChart;
    }
    function echarts_31() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('fb1')); 
        option = {
            title: [{
                text: '演唱会',
                left: 'center',
                textStyle: {
                    color: '#fff',
                    fontSize:'16'
                }
            }],
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b}: {c} ({d}%)",
                position:function(p){   //其中p为当前鼠标的位置
                    return [p[0] + 10, p[1] - 10];
                }
            },
            legend: {
                top:'70%',
                temWidth: 10,
                itemHeight: 10,
                data:["哈尔滨"],
                        textStyle: {
                    color: 'rgba(255,255,255,.5)',
                    fontSize:'12',
                }
            },
            series: [{
                name:'演唱会',
                type:'pie',
                center: ['50%', '42%'],
                radius: ['40%', '60%'],
                      color: ['#065aab', '#066eab', '#0682ab', '#0696ab', '#06a0ab','#06b4ab','#06c8ab','#06dcab','#06f0ab'],
                label: {show:false},
                labelLine: {show:false},
                data:[
                    {value:11, name:'ff'},
                    //{value:4, name:'20-29岁'},
                   // {value:2, name:'30-39岁'},
                    //{value:2, name:'40-49岁'},
                    //{value:1, name:'50岁以上'},
                ]
            }]
        };
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
        return myChart;
    }
    function echarts_32() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('fb2'));
        option = {
            title: [{
            text: '音乐会',
            left: 'center',
            textStyle: {
                color: '#fff',
                fontSize:'16'
            }

        }],
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)",
            position:function(p){   //其中p为当前鼠标的位置
                return [p[0] + 10, p[1] - 10];
            }
        },
        legend: {
            top:'70%',
            itemWidth: 10,
            itemHeight: 10,
            data:['电子商务','教育','IT/互联网','金融','学生','其他'],
            textStyle: {
               color: 'rgba(255,255,255,.5)',
                fontSize:'12',
            }
        },
        series: [{
                name:'音乐会',
                type:'pie',
                center: ['50%', '42%'],
                radius: ['40%', '60%'],
                color: ['#065aab', '#066eab', '#0682ab', '#0696ab', '#06a0ab','#06b4ab','#06c8ab','#06dcab','#06f0ab'],
                label: {show:false},
                labelLine: {show:false},
                data:[
                    {value:5, name:'电子商务'},
                    {value:1, name:'教育'},
                    {value:6, name:'IT/互联网'},
                    {value:2, name:'金融'},
                    {value:1, name:'学生'},
                    {value:1, name:'其他'},
                ]
            }]
        };
      
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
        return myChart;
    }
    function echarts_33() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('fb3'));
        option = {
            title: [{
                text: '体育',
                left: 'center',
                textStyle: {
                    color: '#fff',
                    fontSize:'16'
                }
            }],
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b}: {c} ({d}%)",
                position:function(p){   //其中p为当前鼠标的位置
                    return [p[0] + 10, p[1] - 10];
                }
            },
            legend: {
                top:'70%',
                itemWidth: 10,
                itemHeight: 10,
                data:['汽车','旅游','财经','教育','软件','其他'],
                        textStyle: {
                    color: 'rgba(255,255,255,.5)',
                    fontSize:'12',
                }
            },
            series: [{
                name:'体育',
                type:'pie',
                center: ['50%', '42%'],
                radius: ['40%', '60%'],
                       color: ['#065aab', '#066eab', '#0682ab', '#0696ab', '#06a0ab','#06b4ab','#06c8ab','#06dcab','#06f0ab'],
                label: {show:false},
                labelLine: {show:false},
                data:[
                    {value:2, name:'汽车'},
                    {value:3, name:'旅游'},
                    {value:1, name:'财经'},
                    {value:4, name:'教育'},
                    {value:8, name:'软件'},
                    {value:1, name:'其他'},
                ]
            }]
        };
      
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.addEventListener("resize",function(){
            myChart.resize();
        });
        return myChart;
    }
})


		
		
		


		









