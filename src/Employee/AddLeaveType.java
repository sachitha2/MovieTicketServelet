package Employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LeaveTypeDAO;
import Model.LeavetypeModel;


@WebServlet("/AddLeaveType")
public class AddLeaveType extends HttpServlet {
	
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
		
		if((request.getParameter("type") != null) && (request.getParameter("maxLeave") != null)) {
			
			//leavetypeDAO
		    LeaveTypeDAO levTyDAO = new LeaveTypeDAO(connection);
		    
		    int maxLeaves = Integer.parseInt(request.getParameter("maxLeave"));
		    
		    LeavetypeModel levTyModel = new LeavetypeModel(0,request.getParameter("type"),maxLeaves);
		    
		    levTyDAO.addData(levTyModel);
		    response.sendRedirect("addleavetype.jsp?msg=done");
		}else {
			response.sendRedirect("addleavetype.jsp?msg=failed");
		}
		
		
		doGet(request, response);
	}

}
