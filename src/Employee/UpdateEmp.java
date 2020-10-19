package employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmployeeDAO;
import model.EmployeeModel;

@WebServlet("/UpdateEmp")
public class UpdateEmp extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
	    
	    EmployeeDAO empDAO = new EmployeeDAO(connection);
		
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("id"));
		
		if(request.getParameter("addemp").equals("Submit")) {
			
			
			
			EmployeeModel empModel = new EmployeeModel(id,request.getParameter("name"),request.getParameter("dob"),request.getParameter("address"),request.getParameter("mobile"),request.getParameter("email"),request.getParameter("nic"),request.getParameter("username"),request.getParameter("pass"));
			
			
			empDAO.updateData(empModel);
			response.sendRedirect("updateemp.jsp?msg=done&id="+id);
		}else {
			response.sendRedirect("updateemp.jsp?msg=failed&id="+id);
		}
		doGet(request, response);
	}

}
