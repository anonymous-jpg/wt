

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/calcServlet")
public class calcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int a=Integer.parseInt(request.getParameter("o1"));
		int b=Integer.parseInt(request.getParameter("o2"));
		switch(request.getParameter("op")) {
		case "+":
			response.getWriter().write("Sum is :"+(a+b));
			break;
		case "-":
			response.getWriter().write("Subtraction is :"+(a-b));
			break;
		case "*":
			response.getWriter().write("Multiplication is :"+(a*b));
			break;
		case "/":
			response.getWriter().write("Division is :"+(a/b));
			break;
		case "%":
			response.getWriter().write("Modulus is :"+(a%b));
			break;
		}
	}
}
