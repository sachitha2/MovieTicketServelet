package Employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LoginDAO;
import Model.UserModel;

@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
		
		
		PrintWriter out = response.getWriter();
		
		
		if((request.getParameter("username") != null) &&  (request.getParameter("password") != null)  &&  (request.getParameter("type") != null)) {
			
			out.println("<h1>Add user</h1>");
			
			LoginDAO loginDAO =new  LoginDAO(connection);
		    
		    UserModel uModel = new UserModel(request.getParameter("username") ,request.getParameter("password"),1);
		    out.println("<br>");
		    out.println(loginDAO.addData(uModel));
			out.println("parameters ok");
		}else {
			out.println("parameters wrong");
		}
		doGet(request, response);
	}

}
