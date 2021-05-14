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

import DAO.BookingDAO;
import DAO.SheetDAO;
import DAO.ShowTimeDAO;
import Model.Booking;
import Model.SheetavailabilityModel;

@WebServlet("/BookTickets")
public class BookTickets  extends HttpServlet {
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
	    SheetDAO sheetDAO = new SheetDAO(connection);
	    BookingDAO booking = new BookingDAO(connection);
	    
	    String totTickets = request.getParameter("tickets");
	    String sheets = request.getParameter("sheets");
	    
	    java.util.List<String> sheetList = Arrays.asList(sheets.split(","));
	    
	    
	    //add data to booking table
	    int numTickets = Integer.parseInt(totTickets);
	    Booking bookingModel = new Booking(0, 1, 2,3, numTickets, "2015-10-10");
	    
	    int bookingId = booking.addData(bookingModel);
	    
	    
	    int i;
	    int sheetNum;
	    for (i = 0;i < numTickets;i++ ) {
	    	sheetNum = Integer.parseInt(sheetList.get(i));
	    	SheetavailabilityModel sheetavailabilityModel = new SheetavailabilityModel(0, "2015-10-10", 1, 1, bookingId, 4,sheetNum);
	    	sheetDAO.addData(sheetavailabilityModel);
	    }
	    
	     
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
		out.print("helloo tickets"+totTickets+sheets+sheetList);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		doGet(request, response);
	}
}
