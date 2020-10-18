<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit Leave Type</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <div class="content">
       <h2>Edit Leave Type</h2>
       <div class="mini-container" style="height: 450px;">
        <form action="" method="post">
            <label for="ltype" class="label">Leave Type</label>
            <input type="text" name="" id="ltype" value="##" required><br>
            <label for="num" class="label">Max Leaves </label>
            <input type="number" name="" id="num" value="" required><br>
            <br><br>
            <input class="accept-btn" type="submit" name="" id="" style="margin-right:150px ;"> <input type="reset" class="accept-btn">
            
        </form>
       </div>
    </div>
</body>
</html>