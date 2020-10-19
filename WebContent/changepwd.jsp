<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Change Password</title>
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
            <input type="password" name="cnpwd" id="cnpwd" required><br><br>
            <input class="accept-btn" type="submit" name="" style="margin-right:150px ;"> 
            <a href="adminindex.jsp"><input type="button" value="Cancel" class="accept-btn" ></a>
            
        </form>
       </div>
    </div>
</body>
<script>
    var password = document.getElementById("npwd")
    var confirm_password = document.getElementById("cnpwd");

    function validatePassword(){
    if(password.value != confirm_password.value) {
        cnpwd.setCustomValidity("Passwords Don't Match");
    } else {
        cnpwd.setCustomValidity('');
    }
    }

    npwd.onchange = validatePassword;
    cnpwd.onkeyup = validatePassword;
</script>
</html>