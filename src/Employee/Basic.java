package Employee;

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
import DAO.LoginDAO;
import Model.DepartmentModel;
import Model.EmployeeModel;
import Model.LeaveModel;

public class Basic extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println("<h1>Hello World</h1>");
		
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
        
	    
	    LoginDAO loginDAO =new  LoginDAO(connection);
	    
	    EmployeeDAO empDAO = new EmployeeDAO(connection);
	    
	    out.println("<h1>"+empDAO.GetTotCount()+"</h1>");
	    
	    try {
	    	ResultSet rs = loginDAO.userList();
			while(rs.next()) {
				out.println("<br>");
				out.print(rs.getString("username"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block	
			e.printStackTrace();
		}
	    
	    
	    
	    //adddepartment
	    DepartmentDAO depDAO = new DepartmentDAO(connection);
	    
	    DepartmentModel dep = new DepartmentModel(0,"sachitha department");
	    out.println("<br>");
	    out.println(depDAO.addData(dep));
	    
	    //add emp
	    EmployeeModel empModel = new EmployeeModel(0,"name","2020-10-10","address","mobile","email","nic","uname","pass");
	    out.println("<br>");
	    out.println(empDAO.addData(empModel));
	    
	    
	    //leaveDAO
	    
	    LeaveDAO levDAO = new LeaveDAO(connection);
	    
	    LeaveModel levModel = new LeaveModel(0,"1","2020-10-25","2020-10-11","reason",1);
	    	    
	    out.println(levDAO.addData(levModel));

	}
}
