package Employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DepartmentDAO;
import DAO.LoginDAO;


@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
		
		
		PrintWriter out = response.getWriter();
		//handle delete here
		if(request.getParameter("id")!=null){
			out.println("<p>Done</p>");
			LoginDAO userDAO = new LoginDAO(connection);
			LoginDAO.del(request.getParameter("id"));
		}else {
			out.println("Delete id not found");
		}
	}

	
}
