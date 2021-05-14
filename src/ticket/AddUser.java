package ticket;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import Model.UserModel;

@WebServlet("/Register")
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
		
		
		if((request.getParameter("email") != null) &&  (request.getParameter("fname") != null)  &&  (request.getParameter("lname") != null ) &&  (request.getParameter("pass") != null ) &&  (request.getParameter("passa") != null )&&  (request.getParameter("tp") != null )) {
			
			out.println("<h1>Add user</h1>");
			
			UserDAO userDAO = new UserDAO(connection);
			
			
			
		    
		    UserModel uModel = new UserModel(request.getParameter("email") ,request.getParameter("pass"),request.getParameter("fname"),request.getParameter("lname"),2,request.getParameter("tp"));
		    if(userDAO.addData(uModel)){
		    	out.println("parameters ok");
				HttpSession session =  request.getSession();
				session.setAttribute("email", request.getParameter("email"));
				session.setAttribute("type", "2");
				response.sendRedirect("index.jsp");
		    }else {
		    	response.sendRedirect("register.jsp?err=Registration failed");
		    }
			
			//TODO check registered or not here
		}else {
			out.println("parameters wrong");
		}
		doGet(request, response);
	}

}
