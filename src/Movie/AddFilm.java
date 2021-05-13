package Movie;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.EmployeeDAO;
import DAO.FilmDAO;
import Employee.DB;
import Model.EmployeeModel;
import Model.Film;


@WebServlet("/AddFilm")
public class AddFilm extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		DB obj_DB_Connection=new DB();
		Connection connection=null;
	    connection=obj_DB_Connection.get_connection();
	    
	    FilmDAO filmDAO = new FilmDAO(connection);
		
		PrintWriter out = response.getWriter();
		
		if(1 == 1) {
			
//			EmployeeModel empModel = new EmployeeModel(0,request.getParameter("name"),request.getParameter("dob"),request.getParameter("address"),request.getParameter("mobile"),request.getParameter("email"),request.getParameter("nic"),request.getParameter("username"),request.getParameter("pass"));
			out.print(request.getParameter("director"));
			Film film = new Film(1,"helloo","2020-02-02","2020-02-02",request.getParameter("director"),request.getParameter("prod"),request.getParameter("cast"),request.getParameter("image"));
			
			filmDAO.addData(film);
			//response.sendRedirect("admin/addmovie.jsp");
		}else {
			response.sendRedirect("admin/addmovie.jsp");
		}
		doGet(request, response);
	}

}
