package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.LeaveModel;
import Model.LeavetypeModel;

public class LeaveTypeDAO {
	Connection connection=null;
	public String table = "leavetype";
    

	public LeaveTypeDAO(Connection connection) {
		this.connection = connection;
	}
	
	public ResultSet  leaveList() {
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
	
	public boolean addData(LeavetypeModel levTyModel) {
		PreparedStatement ps=null;
	    String query="INSERT INTO leavetype (id, type, maxLeaves) VALUES (NULL, '"+levTyModel.getType()+"', '"+levTyModel.getMaxLeaves()+"');";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		
		return false;
	}
	public boolean del(String id) {
		PreparedStatement ps=null;
	    String query="DELETE FROM leavetype WHERE leavetype.id = "+id+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return false;
		
	}
	//TODO EDIT
	//TODO Take a data from passing id
}
