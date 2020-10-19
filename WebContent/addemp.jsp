<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>New Employee</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <div class="content">
       <h2>Add New Employee</h2>    
       <div class="mini-container" style="height: auto;margin-bottom: 30px;">
        <form action="AddEmp" method="post">
            <label for="empid" class="label">Employee ID</label>
            <input type="text" name="id" id="empid" disabled><br>
            <label for="name" class="label">Name</label>
            <input type="text" name="name" id="sdate" required><br>
            <label for="dob" class="label">BirthDay</label>
            <input type="date" id="dob" name="dob" required><br>
            <label for="address" class="label">Address</label>
            <textarea name="address" id="address"  required rows="4"></textarea><br>
            <label for="tel" class="label">Mobile No.</label>
            <input type="tel" name="mobile" id="tel" required pattern="[0-9]{10}"><br>
            <label for="email" class="label">Email</label>
            <input type="email" name="email" id="email" required><br>
            <label for="nic" class="label">NIC</label>
            <input type="text" name="nic" id="nic" pattern="[0-9a-z,A-Z]{10,12}" required><br>
            <label for="uname" class="label">Username</label>
            <input type="text" name="username" id="uname" required ><br>
            <label for="pwd" class="label">Password</label>
            <input type="password" name="pass" id="pwd" required><br>
            <br>
            			<p style="text-align:center;font-size:20px;color:red">
						<%
							if(request.getParameter("msg")!=null){
								out.print(request.getParameter("msg"));
							}
						%>
						</p>
            <input class="accept-btn" type="submit" name="addemp"  style="margin-right:150px ;"> <a href="adminindex.jsp"><input type="button" value="Cancel" class="accept-btn" ></a>
            
        </form>
       </div>
    </div>
</body>
</html>