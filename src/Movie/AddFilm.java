package Movie;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DAO.FilmDAO;
import DAO.ShowTimeDAO;
import Model.Film;
import Model.ShowTime;
import ticket.DB;


@WebServlet("/AddFilm")
public class AddFilm extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
	    
	    FilmDAO filmDAO = new FilmDAO(connection);
	    ShowTimeDAO showDAO = new ShowTimeDAO(connection);
		
		PrintWriter out = response.getWriter();
		
		
		//TODO
		
		if(1 == 1) {
			
//			EmployeeModel empModel = new EmployeeModel(0,request.getParameter("name"),request.getParameter("dob"),request.getParameter("address"),request.getParameter("mobile"),request.getParameter("email"),request.getParameter("nic"),request.getParameter("username"),request.getParameter("pass"));
			//out.print(request.getParameter("director"));
			Film film = new Film(1,request.getParameter("title"),"",request.getParameter("edate"),request.getParameter("director"),request.getParameter("prod"),request.getParameter("cast"),request.getParameter("image"));
			
			int i = filmDAO.addData(film);
			
			if(request.getParameter("time9") == null ) {
				ShowTime showTime9F = new ShowTime(1,i, "9:00 AM", 0);
				showDAO.addData(showTime9F);
			}else {
				ShowTime showTime9T = new ShowTime(1,i, "9:00 AM", 1);
				showDAO.addData(showTime9T);
			}
			
			if(request.getParameter("time11") == null ) {
				ShowTime showTime11F = new ShowTime(1,i, "11:00 AM", 0);
				showDAO.addData(showTime11F);
			}else {
				ShowTime showTime11T = new ShowTime(1,i, "11:00 AM", 1);
				showDAO.addData(showTime11T);
			}
			
			if(request.getParameter("time4") == null ) {
				ShowTime showTime4F = new ShowTime(1,i, "4:00 PM", 0);
				showDAO.addData(showTime4F);
			}else {
				ShowTime showTime4T = new ShowTime(1,i, "4:00 PM", 1);
				showDAO.addData(showTime4T);
			}
			
			if(request.getParameter("time7") == null ) {
				ShowTime showTime7F = new ShowTime(1,i, "7:00 PM", 0);
				showDAO.addData(showTime7F);
			}else {
				ShowTime showTime7T = new ShowTime(1,i, "7:00 PM", 1);
				showDAO.addData(showTime7T);
			}
			
			if(request.getParameter("time10") == null ) {
				ShowTime showTime10F = new ShowTime(1,i, "10:00 PM", 0);
				showDAO.addData(showTime10F);
			}else {
				ShowTime showTime10T = new ShowTime(1,i, "10:00 PM", 1);
				showDAO.addData(showTime10T);
			}
			
			response.sendRedirect("admin/addmovie.jsp");
		}else {
			response.sendRedirect("admin/addmovie.jsp");
		}
		doGet(request, response);
	}

}
