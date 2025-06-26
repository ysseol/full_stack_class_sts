<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="http://www.google.com/jsapi"></script>
<script>
google.load("visualization", "1",{"packages":["corechart"]});
google.setOnLoadCallback(drawChart);
function drawChart(){
	const jsonData=$.ajax({
		url: "/resources/json/sample.json",
		dataType: "json",
		async: false
	}).responseText;
	const data=new google.visualization.DataTable(jsonData);
	const chart=new google.visualization.PieChart( document.getElementById("chart_div") );
	chart.draw(data, {
		title:"차트 예제",
		width: 600,
		height: 440
	});
}
</script>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<div id="chart_div"></div>
<button type="button" onclick="drawChart()">refresh</button>
</body>
</html>