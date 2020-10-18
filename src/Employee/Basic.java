package Employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Basic extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println("<h1>Hello World</h1>");
		
		DB obj_DB_Connection=new DB();
        Connection connection=null;
        connection=obj_DB_Connection.get_connection();
        PreparedStatement ps=null;
        String query="SELECT * FROM user;";
        try {
            ps=connection.prepareStatement(query);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                out.println(rs.getString("id")+" - "+rs.getString("username"));
                out.println("<br>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

	}
}
