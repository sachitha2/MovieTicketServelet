package ticket;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.tools.javac.util.List;

import DAO.ShowTimeDAO;

@WebServlet("/BookTickets")
public class BookTickets  extends HttpServlet {
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
	    ShowTimeDAO showTimeDAO = new ShowTimeDAO(connection);
	    
	    String totTickets = request.getParameter("tickets");
	    String sheets = request.getParameter("sheets");
	    
	    java.util.List<String> elephantList = Arrays.asList(sheets.split(","));
	     
//	    String showTime = "\"TimeSlotId\":[";
//	    String showTimeNames = "\"names\":[";
//	    String status = "\"status\":[";
//	    
//	    int x = 1;
//	    try {
//	    	ResultSet rs = showTimeDAO.ShowTimes(request.getParameter("id"));
//	    	while(rs.next()) {
//				
//				if(x == 5) {
//					showTime += "\""+rs.getString("id")+"\"]";
//					showTimeNames += "\""+rs.getString("timeslot")+"\"]";
//					status += "\""+rs.getString("status")+"\"]";
//				}else {
//					showTime += "\""+rs.getString("id")+"\",";
//					showTimeNames += "\""+rs.getString("timeslot")+"\",";
//					status += "\""+rs.getString("status")+"\",";
//				}
//				x++;
//			}
//		    
//	    }catch (SQLException e ) {
//	    	e.printStackTrace();
//		}
//	   
    	
		
	    
	    
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		
		PrintWriter out = response.getWriter();
	   
//		out.print("{"+showTime+","+showTimeNames+","+status+"}");
		
		out.print("helloo tickets"+totTickets+sheets+elephantList);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		doGet(request, response);
	}
}
