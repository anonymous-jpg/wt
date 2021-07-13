import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/login")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "");
            if (con == null) {
                System.out.println("Failed");
            }
            Statement stmt = con.createStatement();
            String name = request.getParameter("uname");
            String password = request.getParameter("pass");
            ResultSet rs = stmt
                    .executeQuery("select * from emp where uname='" + name + "' and password='" + password + "'");
            PrintWriter pw = response.getWriter();
            if (rs.next()) {
                pw.println("Welcome to this site");
            } else {
                pw.print("User not found");
            }
        } catch (Exception ex) {
        }
    }
}
