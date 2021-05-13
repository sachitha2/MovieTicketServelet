package ticket;




import javax.swing.*;
import java.sql.*;

public class DB {

	

    public Connection get_connection(){
        Connection connection=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection= DriverManager.getConnection("jdbc:mysql://localhost:3306/movieticket","root","");
        }catch (Exception e) {
            System.out.println(e);
        }
        return connection;
    }
}