package DAO;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Film;



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
	    String query="SELECT * FROM "+table+"  ORDER BY edate DESC;";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	public Film  GetAFilmById(String id) {
		PreparedStatement ps=null;
	    String query="SELECT * FROM "+table+"  WHERE id = "+id+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	Film film = new Film(rs.getInt("id"), rs.getString("title"), rs.getString("sdate"), rs.getString("edate"), rs.getString("director"), rs.getString("producer"), rs.getString("cast"), rs.getString("image"));
	            return film;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	public int addData(Film film) {
		PreparedStatement ps=null;
	    String query="INSERT INTO "+table+" (id, title, sdate, edate, director, producer, cast, image) VALUES (NULL, '"+film.getTitle()+"', CURDATE(), '"+film.getEdate()+"', '"+film.getDirector()+"', '"+film.getProducer()+"', '"+film.getCast()+"', '"+film.getImage()+"');";
	    try {
	    	String autogenColumns[] = {"id"};
	        ps=connection.prepareStatement(query, autogenColumns);
	        ps.executeUpdate();
	       
	        	   ResultSet rs = ps.getGeneratedKeys();
	        	    rs.next();
	        	   return rs.getInt(1);
	        	
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		
		return 0;
	}
	
	
	public boolean del(String id) {
		PreparedStatement ps=null;
	    String query="DELETE FROM "+table+"  WHERE id = "+id+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return false;
		
	}
	
	public boolean updateData(Film film) {
		PreparedStatement ps=null;
		 
	    String query="UPDATE movie SET title = '"+film.getTitle()+"',  edate = '"+film.getEdate()+"', director = '"+film.getDirector()+"', producer = '"+film.getProducer()+"', cast = '"+film.getCast()+"', image = '"+film.getImage()+"' WHERE movie.id = "+film.getId()+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		
		return false;
	}
	
	public String  MovieNameByTimeId(String id) {
		PreparedStatement ps=null;
	    String query="SELECT * FROM movie WHERE id = (SELECT movie_id FROM mtime WHERE id = "+id+")";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	
	        	 return rs.getString("title");
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return "";
		
	}

}
