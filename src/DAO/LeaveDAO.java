package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LeaveDAO {
	Connection connection=null;
    

	public LeaveDAO(Connection connection) {
		this.connection = connection;
	}
	
	public ResultSet  EmployeeList() {
		PreparedStatement ps=null;
	    String query="SELECT * FROM e_leave;";
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
