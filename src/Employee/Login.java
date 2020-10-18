package Employee;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		if(uname.equals("sam") && pass.equals("sam")) {
			//create a session
			HttpSession session =  request.getSession();
			session.setAttribute("uname", uname);
			response.sendRedirect("adminindex.jsp");
		}else {
			response.sendRedirect("index.jsp?err=e");
		}
		
	}

	
}
