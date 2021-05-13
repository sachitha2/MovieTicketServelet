<%@page import="DAO.LeaveDAO"%>
<%@ page import="DAO.EmployeeDAO"%>
<%@ page import="ticket.DB"%>
<%@ page import="java.sql.*"%>
<%  DB obj_DB_Connection=new DB();
  Connection connection=null;
  connection=obj_DB_Connection.get_connection();
  LeaveDAO DAO =new  LeaveDAO(connection);
  
  EmployeeDAO empDAO = new EmployeeDAO(connection);
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dashboard</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
  <%@include file="adminnavbar.jsp" %>
    <div class="content">
        <div class="cardcontainer">
            <div class="card">
                <div class="card-title">  Users</div>
                <div class="card-content" >10</div>
            </div>
            <div class="card">
                <div class="card-title">  Departments</div>
                <div class="card-content" >100</div>
            </div>
            <div class="card">
                <div class="card-title">  Projects</div>
                <div class="card-content" >5</div>
            </div>
        </div>
        <h2>Leave Requests</h2>
        <div class="maincontainer">
            <table>
                <tr>
                  <th>Emp_ID</th>
                  <th>Emp_Name</th>
                  <th>Leave Type</th>
                  <th>Accept/Reject</th>
                </tr>
                
                <%
				try {
			    	ResultSet rs = DAO.PendingLeaves();
			    	String empId;
			    	
					while(rs.next()) {
						%>
						<tr>
		                  <td><% out.print(rs.getString("id")); %></td>
		                  
		                  <td><% 
		                  	empId = rs.getString("empId");
		                  	out.print(empDAO.getEmpName(empId)); %></td>
		                  
		                  <td><% out.print(rs.getString("leaveType")); %></td>
		                  <td><a href="AcceptReject?id=<% out.print(rs.getString("id")); %>&s=1"><button class="accept-btn">Accept</button></a><a href="AcceptReject?id=<% out.print(rs.getString("id")); %>&s=2"><button class="accept-btn">Reject</button></a></td>
		                </tr>
						<%
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			%>
                
              </table>
        </div>
        <div class="buttoncontainer">
          <a href="addleavetype.jsp" class="admin-btn">Add Leave Type</a> 
            <a href="addemp.jsp" class="admin-btn">Add Employees</a> 
            <a href="adddepartment.jsp" class="admin-btn">Add Departments</a>
            <a href="applyleave.jsp" class="admin-btn">Apply Leave</a>  
        </div>
    </div>
</body>
</html>