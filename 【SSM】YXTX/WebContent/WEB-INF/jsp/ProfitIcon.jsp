<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>诊所盈利统计</title>
<script src="js/echarts.min.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
		<div id="main" style="width: 900px; height: 500px;"></div>
			<script type="text/javascript">
			        // 基于准备好的dom，初始化echarts实例
			        var myChart = echarts.init(document.getElementById('main'));
			
			        // 指定图表的配置项和数据
			        var option = {
					title: {
						text: '诊所盈利统计',
						subtext: '单位：千'
					},
					tooltip: {
						trigger: 'axis',
						axisPointer: {            // 坐标轴指示器，坐标轴触发有效
							type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
						}
					},
					legend: {
						data: ['利润', '支出', '收入']
					},
					grid: {
						left: '3%',
						right: '4%',
						bottom: '3%',
						containLabel: true
					},
					xAxis: [
						{
							type: 'value'
						}
					],
					yAxis: [
						{
							type: 'category',
							axisTick: {
								show: false
							},
							data: ['一月', '二月', '三月', '四月', '五月', '六月']
						}
					],
					series: [
						{
							name: '利润',
							type: 'bar',
							label: {
								show: true,
								position: 'inside'
							},
							emphasis: {
								focus: 'series'
							},
							data: [20, 17, 24, 24, 20, 22]
						},
						{
							name: '收入',
							type: 'bar',
							stack: '总量',
							label: {
								show: true
							},
							emphasis: {
								focus: 'series'
							},
							data: [32, 30, 34, 37, 39, 45]
						},
						{
							name: '支出',
							type: 'bar',
							stack: '总量',
							label: {
								show: true,
								position: 'left'
							},
							emphasis: {
								focus: 'series'
							},
							data: [-12, -13, -10, -13, -19, -23]
						}
					]
				};
			        // 使用刚指定的配置项和数据显示图表。
			        myChart.setOption(option);
			    </script>
	</body>
</html>