package ticket;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DepartmentDAO;
import DAO.EmployeeDAO;
import DAO.LeaveDAO;
import DAO.LeaveTypeDAO;
import DAO.LoginDAO;
import Model.DepartmentModel;
import Model.EmployeeModel;
import Model.LeaveModel;
import Model.LeavetypeModel;
import Model.UserModel;

public class Basic extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println("<h1>Hello World</h1>");
		
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
        
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    //leaveDAO
	    out.println("<h1>Add leave</h1>");
	    LeaveDAO levDAO = new LeaveDAO(connection);
	    
	    LeaveModel levModel = new LeaveModel(0,"1","2020-10-25","2020-10-11","reason",1,"user id");
	    out.println("<br>"); 
	    out.println(levDAO.addData(levModel));
	    
	    
	    
	    
	    
	 
	    

	}
}
