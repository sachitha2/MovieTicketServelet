<%@ page import="DAO.*"%>
<%@ page import="Employee.DB"%>
<%@ page import="java.sql.*"%>
<%  DB obj_DB_Connection=new DB();
  Connection connection=null;
  connection=obj_DB_Connection.get_connection();
  LeaveDAO leaveDAO=new LeaveDAO(connection);
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Leave History</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
  <%@include file="adminnavbar.jsp" %>
    <div class="content" style="margin-top: 80px;">
        <h2>My Leave History</h2>
        <div class="maincontainer">
            <table>     
            
            	<tr>
            		<th>Start Date</th>
            		<th>End Date</th>
            		<th>Reason</th>
            		<th>Status</th>
            		
            	</tr>       
                <%
				try {
			    	ResultSet rs = leaveDAO.EmployeeList();
			    	
					while(rs.next()) {
						%>
						<tr>
		                  <td><% out.print(rs.getString("sDate")); %></td>
		                  <td><% out.print(rs.getString("eDate")); %></td>
		                  <td><% out.print(rs.getString("reason")); %></td>
		                  <td><% out.print(rs.getString("status")); %></td>
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
        <div class="buttoncontainer">
            <a href="applyleave.jsp" class="admin-btn">Apply Leave</a> 
        </div>
    </div>
</body>
</html>