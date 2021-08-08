<%@ page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 한글 데이터가 POST 전송시 깨지지 않도록 처리.
	request.setCharacterEncoding("utf-8");
	// 폼에서 던진 데이터를 받기 위해서는 request.getParameter("name값")
	// 을 활용합니다.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String me = request.getParameter("nick");
	//String hb = request.getParameter("hobby");
	// 체크박스는 복수의 데이터가 넘어올 수 있가 때문에
	// request.getParameterValues("name명")를 사용합니다.
	String[] hobby = request.getParameterValues("hobby");
	String[] skill = request.getParameterValues("skill");
	
	String gender = request.getParameter("gender");
	String newspaper = request.getParameter("newspaper");
	String region = request.getParameter("region");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디: <b><%= id %></b><br/>
	비밀번호: <b><%= pw %></b><br/>
	닉네임:<b><%= me %></b><br/>
	취미 :
	<% for(String name : hobby){ %>
	<b><%=name %></b>&nbsp;
	<% } %>
	취미:<b><%= Arrays.toString(hobby) %></b>
	<br/>
	특기:<b><%= Arrays.toString(skill) %></b>
	<br/>
	성별:<b><%= gender %></b>
	<br/>
	신문:<b><%= newspaper %></b>
	<br/> 
	지역:<b><%= region %></b>
	<br/>
</body>
</html>