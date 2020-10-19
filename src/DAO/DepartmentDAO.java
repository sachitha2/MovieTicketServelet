package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.DepartmentModel;

public class DepartmentDAO {
	Connection connection=null;
	public String table = "department";

	public DepartmentDAO(Connection connection) {
		this.connection = connection;
	}
	
	public ResultSet  DeartmentList() {
		
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
	
	
	public int GetTotCount() {
		int c = 0;
		PreparedStatement ps=null;
	    String query="SELECT COUNT(*) AS rowcount FROM "+table+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	
	        	c = rs.getInt("rowcount");
	        	
	        	rs.close();
	            return c;
	            
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return c;
	}
	
		public boolean addData(DepartmentModel dep) {
			PreparedStatement ps=null;
		    String query="INSERT INTO "+table+" (id, name) VALUES (NULL, '"+dep.getName()+"');";
		    try {
		        ps=connection.prepareStatement(query);
		        ps.executeUpdate();
		        
		            return true;
		        
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
			
			return false;
		}
		
		//TODO DELETE
		//TODO EDIT
		//TODO Take a data from passing id
}
