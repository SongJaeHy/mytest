<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String strAge = request.getParameter("age");
int age = Integer.parseInt(strAge);

if(age >=20){
	response.sendRedirect("res_ok.jsp");
} else{
	response.sendRedirect("res_no.jsp");
}

%> 
 
<a href="res_no.jsp">no로 이동</a>
<a href="res_ok.jsp">ok로 이동</a>
</body>
</html>