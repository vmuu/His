<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>医生就诊率查询</title>
<script src="./js/echarts.min.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
	#main{
		width: 900px;
		height: 500px;
	}
</style>
</head>
<body>
		<div id="main"></div>
		<script type="text/javascript">
		        // 基于准备好的dom，初始化echarts实例
		        var myChart = echarts.init(document.getElementById('main'));
		
		        // 指定图表的配置项和数据
		        var option = {
		            title: {
		                text: '本周医生就诊次数'
		            },
		            tooltip: {},
		            legend: {
		                data:['就诊次数']
		            },
		            xAxis: {
		                data: ["蔡青山","张三","李四","王五","羊禹飞"]
		            },
		            yAxis: {},
		            series: [{
		                name: '次数',
		                type: 'bar',
		                data: [16, 20, 36, 10, 15]
		            }]
		        };
		
		        // 使用刚指定的配置项和数据显示图表。
		        myChart.setOption(option);
		    </script>
</body>
</html>