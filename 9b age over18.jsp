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
	String name=request.getSession().getAttribute("name").toString();
	out.print("Hello "+name+", Welcome to this site");
%>
</body>
</html>