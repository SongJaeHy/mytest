<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String Id = request.getParameter("Id");
	String Pw = request.getParameter("Pw");
%>
<!DOCTYPE html>


<html>
<% if(Id.equals("abcd") && Pw.equals("1234")) {%>
<head>
<meta charset="UTF-8">
<title>로그인성공!</title>
</head>
<body>
<b><%= Id %></b>님 환영합니다.

</body>

<% } else if(Pw.equals("abcd")) { %>

<head>
<meta charset="UTF-8">
<title>로그인 실패!</title>
</head>
<body>
<b>로그인에 실패했습니다.</b><br/> 
<b>없는 아이디입니다,</b><br/>
<a href="req_login_form.jsp"><b>로그임창으로 돌아가기</b></a>
</body>
<% } else {%>

</head>

<head>
<meta charset="UTF-8">
<title>로그인 실패!</title>
</head>
<body>
<b>로그인 실패했습니다</b><br/>
<b>바말번호가 다릅니다.</b>
<a href="req_login_form.jsp"><b>로그임창으로 돌아가기</b></a>
</body>

<% } %>
</html>