<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>员工统计图</title>
<script type="text/javascript" src="../js/global.js"></script>
<script type="text/javascript"
	src="../js/Highcharts-4.0.3/js/highcharts.js"></script>
<script src="../js/Highcharts-4.0.3/js/modules/exporting.js"></script>
<script type="text/javascript">

$(function(){
	aaa();
})

	function aaa() {
		$
				.post(
						"getPie",
						{},
						function(res) {
							$('#container')
									.highcharts(
											{
												chart : {
													plotBackgroundColor : null,
													plotBorderWidth : 1,//null,
													plotShadow : false
												},
												title : {
													text : '员工出勤率'
												},
												tooltip : {
													pointFormat : '{series.name}: <b>{point.percentage:.1f}%</b>'
												},
												plotOptions : {
													pie : {
														allowPointSelect : true,
														cursor : 'pointer',
														dataLabels : {
															enabled : true,
															format : '<b>{point.name}</b>: {point.percentage:.1f} %',
															style : {
																color : (Highcharts.theme && Highcharts.theme.contrastTextColor)
																		|| 'black'
															}
														}
													}
												},
												series : [ {
													type : 'pie',
													name : '人员数量',
													data : [
															[ '签到人数', res[0]],
															[ '未签到人数',res[1] ],

													]

												} ]
											});
						}, "json")
	}

	function init() {

	}
</script>
</head>
<body>
	<a href="javascript:void(0)" onclick="aaa()" class="easyui-linkbutton">刷新</a>

	<div id="container"
		style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>

</body>
</html>