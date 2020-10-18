<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Departments</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
    <div class="content">
       <h2>Add Department</h2>
       <div class="mini-container">
        <form action="" method="post">
            <label for="depname" class="label1">Depatment Name</label>
            <input type="text" name="depname" id="depname" required><br>
            <label for="depid" class="label1">Department ID</label>
            <input type="text" name="depid" id="depid"><br>
            <label for="nemp" class="label1">No. of Employees</label>
            <input type="number" value="" name="nemp" id="nemp" step="1" min="1" required><br>
            <input class="accept-btn" type="submit" name="" style="margin-right:150px ;"> <input type="reset" class="accept-btn">
            
        </form>
       </div>
    </div>
</body>
</html>