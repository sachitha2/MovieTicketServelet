package ticket;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DepartmentDAO;
import Model.DepartmentModel;
import Model.EmployeeModel;

@WebServlet("/AddDepartment")
public class AddDepartment extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
	    PrintWriter out = response.getWriter();
		
		
		
		
		if(request.getParameter("addDep").equals("Submit")) {
			
		    DepartmentDAO depDAO = new DepartmentDAO(connection);
		    
		    DepartmentModel dep = new DepartmentModel(0,request.getParameter("name"));
		    depDAO.addData(dep);
			
			
			response.sendRedirect("adddepartment.jsp?msg=done");
		}else {
			response.sendRedirect("adddepartment.jsp?msg=failed");
		}
		
		
		doGet(request, response);
	}

}
