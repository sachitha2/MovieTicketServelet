<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <div class="content">
       <h2>My Profile</h2>
       <div class="mini-container" style="height: auto;margin-bottom: 30px;">
            <label for="empid" class="label">Employee ID</label>
            <input type="text" name="empid" id="empid" disabled><br>
            <label for="name" class="label">Name</label>
            <input type="text" name="name" id="sdate" disabled><br>
            <label for="dob" class="label">BirthDay</label>
            <input type="date" id="dob" name="dob" disabled><br>
            <label for="address" class="label">Address</label>
            <textarea name="address" id="address"  disabled rows="4"></textarea><br>
            <label for="tel" class="label">Mobile No.</label>
            <input type="tel" name="tel" id="tel" disabled><br>
            <label for="email" class="label">Email</label>
            <input type="email" name="email" id="email" disabled><br>
            <label for="nic" class="label">NIC</label>
            <input type="text" name="nic" id="nic" disabled><br>
            <label for="uname" class="label">Username</label>
            <input type="text" name="uname" id="uname" disabled><br>
            <label for="pwd" class="label">Password</label>
            <input type="password" name="pwd" id="pwd" disabled><br>
            <br><br>
            <a href="updateemp.jsp"><button class="accept-btn" style="width: 150px;height: 40px;">Update details</button></a>
       </div>
    </div>
</body>
</html>