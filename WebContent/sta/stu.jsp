<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>资源统计图</title>
    <meta charset="utf-8"><link rel="icon" href="https://jscdn.com.cn/highcharts/images/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://code.highcharts.com.cn/highcharts/highcharts.js"></script>
        <script src="https://code.highcharts.com.cn/highcharts/modules/exporting.js"></script>
        <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
<script type="text/javascript" src="../js/global.js"></script>
<script type="text/javascript" src="../js/jquery-easyui-1.4.3/jquery.min.js"></script>
<script type="text/javascript"
	src="../js/Highcharts-4.0.3/js/highcharts.js"></script>
<script src="../js/Highcharts-4.0.3/js/modules/exporting.js"></script>
  <body>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <blockquote class="layui-elem-quote">
                            </blockquote>
                            <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
                            <div id="main" style="width: 100%;height:400px;"></div>
                            <blockquote class="layui-elem-quote">
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
            <div id="container" style="min-width:400px;height:400px"></div>
        
        <script src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts.min.js"></script>
        <script type="text/javascript">
        var chart = Highcharts.chart('container', {
            chart: {
                type: 'column'
            },
            title: {
                text: '分公司效率优化嵌套图'
            },
            xAxis: {
                categories: [
                    '杭州总部',
                    '上海分部',
                    '北京分部'
                ]
            },
            yAxis: [{
                min: 0,
                title: {
                    text: '雇员'
                }
            }, {
                title: {
                    text: '利润 (millions)'
                },
                opposite: true
            }],
            legend: {
                shadow: false
            },
            tooltip: {
                shared: true
            },
            plotOptions: {
                column: {
                    grouping: false,
                    shadow: false,
                    borderWidth: 0
                }
            },
            series: [{
                name: '雇员',
                color: 'rgba(165,170,217,1)',
                data: [150, 73, 20],
                pointPadding: 0.3, // 通过 pointPadding 和 pointPlacement 控制柱子位置
                pointPlacement: -0.2
            }, {
                name: '优化的员工',
                color: 'rgba(126,86,134,.9)',
                data: [140, 90, 40],
                pointPadding: 0.4,
                pointPlacement: -0.2
            }, {
                name: '利润',
                color: 'rgba(248,161,63,1)',
                data: [183.6, 178.8, 198.5],
                tooltip: {  // 为当前数据列指定特定的 tooltip 选项
                    valuePrefix: '$',
                    valueSuffix: ' M'
                },
                pointPadding: 0.3,
                pointPlacement: 0.2,
                yAxis: 1  // 指定数据列所在的 yAxis
            }, {
                name: '优化的利润',
                color: 'rgba(186,60,61,.9)',
                data: [203.6, 198.8, 208.5],
                tooltip: {
                    valuePrefix: '$',
                    valueSuffix: ' M'
                },
                pointPadding: 0.4,
                pointPlacement: 0.2,
                yAxis: 1
            }]
        });
        
        
        
        
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '基础雷达图'
            },
            tooltip: {},
            legend: {
                data: ['预算分配（Allocated Budget）', '实际开销（Actual Spending）']
            },
            radar: {
                // shape: 'circle',
                indicator: [
                   { name: '销售（sales）', max: 6500},
                   { name: '管理（Administration）', max: 16000},
                   { name: '信息技术（Information Techology）', max: 30000},
                   { name: '客服（Customer Support）', max: 38000},
                   { name: '研发（Development）', max: 52000},
                   { name: '市场（Marketing）', max: 25000}
                ]
            },
            series: [{
                name: '预算 vs 开销（Budget vs spending）',
                type: 'radar',
                // areaStyle: {normal: {}},
                data : [
                    {
                        value : [4300, 10000, 28000, 35000, 50000, 19000],
                        name : '预算分配（Allocated Budget）'
                    },
                     {
                        value : [5000, 14000, 28000, 31000, 42000, 21000],
                        name : '实际开销（Actual Spending）'
                    }
                ]
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
    <script>
        var _hmt = _hmt || [];
        (function() {
          var hm = document.createElement("script");
          hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
          var s = document.getElementsByTagName("script")[0]; 
          s.parentNode.insertBefore(hm, s);
        })();
        </script>
    </body>
</html>