package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import Model.UserModel;

public class UserDAO {
	Connection connection=null;
	public String table = "user";
    

	public UserDAO(Connection connection) {
		this.connection = connection;
	}
	
	public ResultSet  userList() {
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
	
	public int checkLogin(String email,String pass) {
		int c = 0;
		PreparedStatement ps=null;
	    String query="SELECT COUNT(*) AS rowcount FROM "+table+" WHERE email LIKE '"+email+"' AND password LIKE '"+pass+"'";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	
	        	c = rs.getInt("rowcount");
	        	
	        	
	        	
	        	rs.close();
	        	if(c == 1) {
	        		c = userType(email,pass);
	        		return c;
	        	}else {
	        		return 0;
	        	}
	            
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return c;
	}
	
	public boolean addData(UserModel uModel) {
		PreparedStatement ps=null;
	    String query="INSERT INTO user (id, email, password, tp, type, profileImage, lname, fname) VALUES (NULL, '"+uModel.getEmail()+"', '"+uModel.getPassword()+"', '"+uModel.getTp()+"', '2', 'assets/profileimg.png', '"+uModel.getLname()+"', '"+uModel.getFname()+"');";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		
		return false;
	}
	
	public int userType(String email,String pass) {
		int c = 0;
		PreparedStatement ps=null;
	    String query="SELECT type  FROM "+table+" WHERE email LIKE '"+email+"' AND password LIKE '"+pass+"';";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	
	        	c = rs.getInt("type");
	        	
	        	rs.close();
	            return c;
	            
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return c;
	}
	
	public UserModel getUserData(String email) {
		
		PreparedStatement ps=null;
	    String query="SELECT email, type,password,fname,lname,tp  FROM "+table+" WHERE email LIKE '"+email+"';";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	
	        	UserModel uModel = new UserModel(rs.getString("email"),rs.getString("password"),rs.getString("fname"),rs.getString("lname"),rs.getInt("type"),rs.getString("tp"));
	        	rs.close();
	            return uModel;
	            
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	public boolean del(String name) {
		PreparedStatement ps=null;
	    String query="DELETE FROM user WHERE user.username = "+name+";";
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
