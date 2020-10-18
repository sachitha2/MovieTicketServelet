package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
	Connection connection=null;
    

	public LoginDAO(Connection connection) {
		this.connection = connection;
	}
	
	public ResultSet  userList() {
		PreparedStatement ps=null;
	    String query="SELECT * FROM user;";
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
