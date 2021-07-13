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
		<input type="text" name="o1"> <select name="op">
			<option value="+">+
			<option value="-">-
			<option value="*">*
			<option value="/">/
			<option value="%">%
		</select> <input type="text" name="o2" />
		<button type="submit" name="sub">Calculate</button>
	</form>
	<%
	if (request.getParameter("sub") != null) {
		int a = Integer.parseInt(request.getParameter("o1"));
		int b = Integer.parseInt(request.getParameter("o2"));
		switch (request.getParameter("op")) {
		case "+":
			out.write("Sum is :" + (a + b));
			break;
		case "-":
			out.write("Subtraction is :" + (a - b));
			break;
		case "*":
			out.write("Multiplication is :" + (a * b));
			break;
		case "/":
			out.write("Division is :" + (a / b));
			break;
		case "%":
			out.write("Modulus is :" + (a % b));
			break;
		}
	}
	%>
</body>
</html>