package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SheetDAO {
//SELECT `sheetavailability`.* FROM `sheetavailability` INNER JOIN `mtime` ON `mtime`.`id`=`sheetavailability`.`mtimeId` and `mtime`.`movie_id` = 39
	public String table = "sheetavailability";
	Connection connection;
    

	public  SheetDAO(Connection connection) {
		// TODO Auto-generated constructor stub
		this.connection = connection;
	}
	
	public ResultSet  SheetAvailability() {
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
