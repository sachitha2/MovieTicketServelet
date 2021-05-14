package Movie;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;

import DAO.ShowTimeDAO;
import ticket.DB;
import org.json.simple.JSONObject;

@WebServlet("/TimeSlotsOfAMV")
public class TakeTimeSlotsOfAMV extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
	    ShowTimeDAO showTimeDAO = new ShowTimeDAO(connection);
	     
	    String showTime = "\"TimeSlotId\":[";
	    String showTimeNames = "\"names\":[";
	    String status = "\"status\":[";
	    
	    int x = 1;
	    try {
	    	ResultSet rs = showTimeDAO.ShowTimes(request.getParameter("id"));
	    	while(rs.next()) {
				
				if(x == 5) {
					showTime += "\""+rs.getString("id")+"\"]";
					showTimeNames += "\""+rs.getString("timeslot")+"\"]";
					status += "\""+rs.getString("status")+"\"]";
				}else {
					showTime += "\""+rs.getString("id")+"\",";
					showTimeNames += "\""+rs.getString("timeslot")+"\",";
					status += "\""+rs.getString("status")+"\",";
				}
				x++;
			}
		    
	    }catch (SQLException e ) {
	    	e.printStackTrace();
		}
	   
    	
		
	    
	    
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		
		PrintWriter out = response.getWriter();
	   
		out.print("{"+showTime+","+showTimeNames+","+status+"}");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		
//	    
//	    FilmDAO DAO = new FilmDAO(connection);
		
		
		
//		int fid = Integer.parseInt(request.getParameter("fid"));
//		
//		Film film =  new Film(fid, request.getParameter("title"), "ed", request.getParameter("edate"), request.getParameter("director"), request.getParameter("producer"), request.getParameter("cast"), request.getParameter("image"));
//		
//		DAO.updateData(film);
//		response.sendRedirect("admin/movielist.jsp");
//		if(request.getParameter("addemp").equals("Submit")) {
//			
//			
//			
//			EmployeeModel empModel = new EmployeeModel(id,request.getParameter("name"),request.getParameter("dob"),request.getParameter("address"),request.getParameter("mobile"),request.getParameter("email"),request.getParameter("nic"),request.getParameter("username"),request.getParameter("pass"));
//			
//			
//			empDAO.updateData(empModel);
//			response.sendRedirect("updateemp.jsp?msg=done&id="+id);
//		}else {
//			response.sendRedirect("updateemp.jsp?msg=failed&id="+id);
//		}
		doGet(request, response);
	}
	
}
