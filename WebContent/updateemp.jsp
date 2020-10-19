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
        <title>Update Employee</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <div class="content">
       <h2>Update Employee Details</h2>
       <div class="mini-container" style="height: auto;margin-bottom: 30px;">
       <%
				try {
			    	ResultSet rs = DAO.getAEmp(request.getParameter("id"));
			    	
					rs.next();
					%>
        <form action="UpdateEmp" method="post">
            <label for="empid" class="label">Employee ID</label>
            <input type="text" name="id" id="empid" value="<% out.print(rs.getString("id")); %>" readonly><br>
            <label for="name" class="label">Name</label>
            <input type="text" name="name"  value="<% out.print(rs.getString("name")); %>"  required><br>
            <label for="dob" class="label">BirthDay</label>
            <input type="date" id="dob" name="dob"  value="<% out.print(rs.getString("dob")); %>"  required><br>
            <label for="address" class="label">Address</label>
            <textarea name="address" id="address"  required rows="4">
            	<% out.print(rs.getString("address")); %>
            </textarea><br>
            <label for="tel" class="label">Mobile No.</label>
            <input type="tel" name="mobile"   value="<% out.print(rs.getString("mobile")); %>"  id="tel" required><br>
            <label for="email" class="label">Email</label>
            <input type="email" name="email"   value="<% out.print(rs.getString("email")); %>"  id="email" required><br>
            <label for="nic" class="label">NIC</label>
            <input type="text" name="nic"  value="<% out.print(rs.getString("nic")); %>"  id="nic" required><br>
            <label for="uname" class="label">Username</label>
            <input type="text" name="username"   value="<% out.print(rs.getString("username")); %>"  id="uname" required><br>
            <label for="pwd" class="label">Password</label>
            <input type="password" name="pass" id="pwd"  value="<% out.print(rs.getString("pass")); %>"  required><br>
            <br><br>
            
             <%
            
            } catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

	%>
            <p style="text-align:center;font-size:20px;color:red">
                <%
                if(request.getParameter("msg")!=null){
                out.print(request.getParameter("msg"));
                }
                %>
                </p>
            <input class="accept-btn" type="submit" name="addemp"  style="margin-right:150px ;"> <input type="reset" class="accept-btn">
            
        </form>
       </div>
    </div>
</body>
</html>