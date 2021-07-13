<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Week9-b</title>
</head>
<body>
<% 
	String name=request.getParameter("name");
	int age=Integer.parseInt(request.getParameter("age"));
	request.getSession().setAttribute("name", name);
	if(age>=18){
		response.sendRedirect("./over18.jsp");
	}
	else{
		response.sendRedirect("./below18.jsp");
	}
%>
</body>
</html>