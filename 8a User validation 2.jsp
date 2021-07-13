<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
try{
	String name=request.getParameter("name");
	String pass=request.getParameter("pass");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select *from emp where uname='"+name+"' and password='"+pass+"'");
	if(rs.next()){
		out.print("Welcome User");
	}else{
		out.print("Invalid User");
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>