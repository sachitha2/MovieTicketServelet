<%@ page import="DAO.EmployeeDAO"%>
<%@ page import="ticket.DB"%>
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
        <title>View Employee</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <div class="content">
       <h2>View Employee Details</h2>
       <div class="mini-container" style="height: auto;margin-bottom: 30px;">
       
       <%
				try {
			    	ResultSet rs = DAO.getAEmp(request.getParameter("id"));
			    	
					rs.next();
					%>
            <label for="empid" class="label">Employee ID</label>
            <input type="text" name="empid" id="empid" disabled value="<% out.print(rs.getString("id")); %>"><br>
            <label for="name" class="label">Name</label>
            <input type="text" name="name" value="<% out.print(rs.getString("name")); %>" disabled><br>
            <label for="dob" class="label">BirthDay</label>
            <input type="date" id="dob" name="dob"  value="<% out.print(rs.getString("dob")); %>"  disabled><br>
            <label for="address" class="label">Address</label>
            <textarea name="address" id="address"   disabled rows="4">
            	 <% out.print(rs.getString("address")); %>
            	 
            </textarea><br>
            <label for="tel" class="label">Mobile No.</label>
            <input type="tel" name="tel" id="tel"  value="<% out.print(rs.getString("mobile")); %>"  disabled><br>
            <label for="email" class="label">Email</label>
            <input type="email" name="email" id="email"  value="<% out.print(rs.getString("email")); %>" disabled><br>
            <label for="nic" class="label">NIC</label>
            <input type="text" name="nic" id="nic"  value="<% out.print(rs.getString("nic")); %>" disabled><br>
            <label for="uname" class="label">Username</label>
            <input type="text" name="uname" id="uname"  value="<% out.print(rs.getString("username")); %>" disabled><br>
            <label for="pwd" class="label">Password</label>
            <input type="password" name="pwd" id="pwd"  value="<% out.print(rs.getString("pass")); %>" disabled><br>
            <br><br>
            <a href="updateemp.jsp?id=<% out.print(request.getParameter("id")); %>"><button class="accept-btn" style="width: 150px;height: 40px;">Update details</button></a>
            <a href=""><button class="accept-btn" style="width: 150px;height: 40px;">Delete </button></a>
            <a href=""><button class="accept-btn" style="width: 150px;height: 40px;">Cancel</button></a>
            <%
            
            } catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

%>
       </div>
    </div>
</body>
</html>