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
import DAO.LeaveDAO;
import Model.DepartmentModel;
import Model.LeaveModel;

@WebServlet("/AddLeave")
public class AddLeave extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
	    PrintWriter out = response.getWriter();
		
		
		
		
		if(request.getParameter("addLe").equals("Submit")) {
			
		    LeaveDAO DAO = new LeaveDAO(connection);
		    
		    LeaveModel lev = new LeaveModel(0,request.getParameter("leavetype"),request.getParameter("sDate"),request.getParameter("eDate"),request.getParameter("reason"),0,"10");
		    DAO.addData(lev);
			
			
			response.sendRedirect("applyleave.jsp?msg=done");
		}else {
			response.sendRedirect("applyleave.jsp?msg=failed");
		}
		
		
		
		
		doGet(request, response);
	}

}
