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
import DAO.LoginDAO;
import Model.DepartmentModel;

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
	    
	    
	    DepartmentDAO depDAO = new DepartmentDAO(connection);
	    
	    DepartmentModel dep = new DepartmentModel(0,"sachitha department");
	    out.println("<br>");
	    out.println(depDAO.addData(dep));
	    

	}
}
