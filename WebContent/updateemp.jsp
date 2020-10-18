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
        <form action="" method="post">
            <label for="empid" class="label">Employee ID</label>
            <input type="text" name="empid" id="empid" value="##" disabled><br>
            <label for="name" class="label">Name</label>
            <input type="text" name="name" id="sdate" required><br>
            <label for="dob" class="label">BirthDay</label>
            <input type="date" id="dob" name="dob" required><br>
            <label for="address" class="label">Address</label>
            <textarea name="address" id="address"  required rows="4"></textarea><br>
            <label for="tel" class="label">Mobile No.</label>
            <input type="tel" name="tel" id="tel" required><br>
            <label for="email" class="label">Email</label>
            <input type="email" name="email" id="email" required><br>
            <label for="nic" class="label">NIC</label>
            <input type="text" name="nic" id="nic" required><br>
            <label for="uname" class="label">Username</label>
            <input type="text" name="uname" id="uname" required><br>
            <label for="pwd" class="label">Password</label>
            <input type="password" name="pwd" id="pwd" required><br>
            <br><br>
            <input class="accept-btn" type="submit" name="addemp"  style="margin-right:150px ;"> <input type="reset" class="accept-btn">
            
        </form>
       </div>
    </div>
</body>
</html>