
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.*;
@WebServlet("/ListCookies")
public class ListCookies extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/Html");
		Cookie c1 = new Cookie("Santosh", "20");
		response.addCookie(c1);
		Cookie c2 = new Cookie("jk", "20");
		response.addCookie(c2);
		Cookie clientCookies[] = request.getCookies();
		for (int i = 0; i < clientCookies.length - 1; i++) {
			response.getWriter()
					.append("<b>" + clientCookies[i].getName() + " : " + clientCookies[i].getValue() + "</b><br>");
		}
	}

}
