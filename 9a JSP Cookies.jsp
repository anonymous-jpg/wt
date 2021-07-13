<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<input type="submit" action="" name="coo" value="List Cookies">
	</form>
	<%
	if (request.getParameter("coo") != null) {
		Cookie c1 = new Cookie("chubby", "22");
		response.addCookie(c1);
		response.addCookie(new Cookie("Raj","21"));
		Cookie clientCookies[] = request.getCookies();
		for (int i = 0; i < clientCookies.length; i++) {
			out.print("<b>" + clientCookies[i].getName() + " : " + clientCookies[i].getValue() + "</b><br>");
		}
	}
	%>
</body>
</html>