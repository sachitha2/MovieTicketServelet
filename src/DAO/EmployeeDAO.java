package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.DepartmentModel;
import model.EmployeeModel;




public class EmployeeDAO {
	
	public String table = "employee";
	Connection connection=null;
    

	public EmployeeDAO(Connection connection) {
		this.connection = connection;
	}
	
	

	public ResultSet  EmployeeList() {
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
	
	
	public int checkLogin(String uname,String pass) {
		int c = 0;
		PreparedStatement ps=null;
	    String query="SELECT COUNT(*) AS rowcount FROM employee WHERE username LIKE '"+uname+"' AND pass LIKE '"+pass+"'";
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
	
	public int getUserId(String uname) {
		int c = 0;
		PreparedStatement ps=null;
	    String query="SELECT id FROM employee WHERE username LIKE '"+uname+"';";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	
	        	c = rs.getInt("id");
	        	
	        	rs.close();
	            return c;
	            
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return c;
	}
	
	public String getEmpName(String empId) {
		String c = "";
		PreparedStatement ps=null;
	    String query="SELECT name FROM employee WHERE id = "+empId;
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	
	        	c = rs.getString("name");
	        	
	        	rs.close();
	            return c;
	            
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return c;
	}
	
	public boolean addData(EmployeeModel empModel) {
		PreparedStatement ps=null;
	    String query="INSERT INTO employee (id, name, dob, address, mobile, email, nic, username, pass) VALUES (NULL, '"+empModel.getName()+"', '"+empModel.getDob()+"', '"+empModel.getAddress()+"', '"+empModel.getMobile()+"', '"+empModel.getEmail()+"', '"+empModel.getNic()+"', '"+empModel.getUsername()+"', '"+empModel.getPass()+"');";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		
		return false;
	}
	
	
	public boolean updateData(EmployeeModel empModel) {
		PreparedStatement ps=null;
		 
	    String query="UPDATE employee SET name = '"+empModel.getName()+"', dob = '"+empModel.getDob()+"', address = '"+empModel.getAddress()+"', mobile = '"+empModel.getMobile()+"', email = '"+empModel.getEmail()+"', nic = '"+empModel.getNic()+"', username = '"+empModel.getUsername()+"', pass = '"+empModel.getPass()+"' WHERE employee.id = "+empModel.getId()+";";
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
	    String query="DELETE FROM employee WHERE employee.id = "+id+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return false;
		
	}
		
		
	public ResultSet  getAEmp(String id) {
		PreparedStatement ps=null;
	    String query="SELECT * FROM "+table+" WHERE id = "+id+" ;";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	
	//TODO EDIT
	
	
}
