<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 
 	
 
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	
	double cm = Double.parseDouble(height);
	double kg = Double.parseDouble(weight);
	
	double bmi = kg / (cm/100 * cm/100);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산 웹어플리케이션</title>
</head>
<body>
<h2>BMI 웹 어플리케이션</h2>
<br>
<p>
	신장: <b><%= height %>cm</b><br/>
	체중: <b><%= weight %>kg</b>><br/>
</p>
<p>
	BMI 지수: <b><%= bmi %></b><br/>
	
	<% if(bmi >23) {%>
	<b>당신은 과체중입니다.</b>
	<%}else if(bmi<18.5) { %>
	<b>당신은 저체중입니다.</b>
	<%}else{ %>
	<b>당신은 정상 체중입니다.</b>
	<%} %>
</body>
</html>