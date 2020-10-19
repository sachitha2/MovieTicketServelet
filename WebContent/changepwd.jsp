<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Department</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <div class="content">
       <h2>Change Password</h2>
       <div class="mini-container">
        <form action="" method="post">
            <label for="cpwd" class="label1">Current Password</label>
            <input type="password" name="cpwd" id="cpwd"><br>
            <label for="npwd" class="label1">New Password</label>
            <input type="password" name="npwd" id="npwd"><br>
            <label for="cnpwd" class="label1">Confirm New Password</label>
            <input type="password" name="cnpwd" id="cnpwd" required><br>
            <!-- <label for="nemp" class="label1">No. of Employees</label>
            <input type="number" value="" name="nemp" id="nemp" step="1" min="1" required><br> -->
            <input class="accept-btn" type="submit" name="" style="margin-right:150px ;"> 
            <a href="adminindex.jsp"><input type="button" value="Cancel" class="accept-btn" ></a>
            
        </form>
       </div>
    </div>
</body>
</html>