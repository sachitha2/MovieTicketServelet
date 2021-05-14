package ticket;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.jdi.connect.spi.Connection;

import DAO.UserDAO;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DB obj_DB_Connection=new DB();
		java.sql.Connection connection;
	    connection=obj_DB_Connection.get_connection();
	    
	    
	    UserDAO login = new UserDAO(connection);
		
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		
		
		
		if(login.checkLogin(email, pass) == 1) {
			
			//get user id
			
			//create a session
			HttpSession session =  request.getSession();
			session.setAttribute("email", email);
			session.setAttribute("type", "1");
			response.sendRedirect("admin/index.jsp");
		}else if (login.checkLogin(email, pass) == 2){
			HttpSession session =  request.getSession();
			session.setAttribute("email", email);
			session.setAttribute("type", "2");
			response.sendRedirect("index.jsp");
		}
		else {
			response.sendRedirect("login.jsp?err=e");
		}
		
	}

	
}
