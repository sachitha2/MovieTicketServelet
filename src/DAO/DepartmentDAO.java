package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DepartmentDAO {
	Connection connection=null;
    

	public DepartmentDAO(Connection connection) {
		this.connection = connection;
	}
	
	public ResultSet  DeartmentList() {
		PreparedStatement ps=null;
	    String query="SELECT * FROM department;";
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
