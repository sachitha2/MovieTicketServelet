<%@ page import="DAO.EmployeeDAO"%>
<%@ page import="Employee.DB"%>
<%@ page import="java.sql.*"%>
<%  DB obj_DB_Connection=new DB();
  Connection connection=null;
  connection=obj_DB_Connection.get_connection();
  EmployeeDAO DAO =new  EmployeeDAO(connection);
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Employees</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
  <%@include file="adminnavbar.jsp" %>
    <div class="content">
       <h2>Employee List</h2>
       <a href="addemp.jsp" class="admin-btn" style="width:180px;">Add Employee</a>
       <div style="border: 2px solid #000; height: auto;margin-right: 200px;">
        <table>
            <tr>
              <th>Emp_ID</th>
              <th>Emp_Name</th>
              <th>Leaves taken</th>
              <th>Action</th>
            </tr>

			<%
				try {
			    	ResultSet rs = DAO.EmployeeList();
			    	
					while(rs.next()) {
						%>
						<tr>
						<td><% out.print(rs.getString("id")); %></td>
              			<td><% out.print(rs.getString("username")); %></td>
             			 <td>//TODO</td>
             			 <td><a href="viewemp.jsp?id=<% out.print(rs.getString("id"));  %>"><button class="accept-btn">View more</button></a></td>
             			 </tr>
						<%
						//
						//
						//;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			%>
          </table>
       </div>
    </div>
</body>
</html>