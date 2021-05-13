package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.DepartmentModel;
import Model.EmployeeModel;



public class FilmDAO {
	public String table = "movie";
	Connection connection;
    

	public FilmDAO(Connection connection) {
		this.connection = connection;
	}
	
	
	public ResultSet  MovieList() {
		PreparedStatement ps=null;
	    String query="SELECT * FROM "+table+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	public ResultSet  TopMovieList() {
		PreparedStatement ps=null;
	    String query="SELECT * FROM "+table+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}

}
