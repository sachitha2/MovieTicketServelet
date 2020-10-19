package employee;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.jdi.connect.spi.Connection;

import dao.EmployeeDAO;
import dao.LeaveDAO;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DB obj_DB_Connection=new DB();
		java.sql.Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
	    
	    EmployeeDAO emp = new EmployeeDAO(connection);
		
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		
		
		
		
		if(emp.checkLogin(uname, pass) == 1) {
			
			
			//get user id
			
			//create a session
			HttpSession session =  request.getSession();
			session.setAttribute("uname", uname);
			response.sendRedirect("adminindex.jsp");
		}else {
			response.sendRedirect("index.jsp?err=e");
		}
		
	}

	
}
