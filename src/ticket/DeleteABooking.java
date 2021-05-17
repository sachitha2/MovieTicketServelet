package ticket;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookingDAO;
import DAO.FilmDAO;
import ticket.DB;

@WebServlet("/DeleteABooking")
public class DeleteABooking extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
		
		
		PrintWriter out = response.getWriter();
		//handle delete here
		if(request.getParameter("id")!=null){
			out.println("<p>Done</p>");
			BookingDAO d = new BookingDAO(connection);
			d.del(request.getParameter("id"));
			response.sendRedirect("admin/bookings.jsp");
		}else {
			out.println("Delete id not found");
		}
	}

	

}