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
import Model.Film;
import ticket.DB;

@WebServlet("/UpdateMV")
public class EditAMovie extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
	    
	    FilmDAO DAO = new FilmDAO(connection);
		
		PrintWriter out = response.getWriter();
		
		int fid = Integer.parseInt(request.getParameter("fid"));
		
		Film film =  new Film(fid, request.getParameter("title"), "ed", request.getParameter("edate"), request.getParameter("director"), request.getParameter("producer"), request.getParameter("cast"), request.getParameter("image"));
		
		DAO.updateData(film);
		response.sendRedirect("admin/movielist.jsp");
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
