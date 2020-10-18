<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Departments</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
  <%@include file="adminnavbar.jsp" %>
    <div class="content">
       <h2>Department List</h2>
       <div style="border: 2px solid #000; height: auto;margin-right: 200px;">
        <table>
            <tr>
              <th>Dep_ID</th>
              <th>Dep_Name</th>
              <th>No. of Emp</th>
              <th>Action</th>
            </tr>
            <tr>
              <td>001</td>
              <td>Griffin</td>
              <td>Casual</td>
              <td><button class="accept-btn">Remove</button></td>
            </tr>
            <tr>
              <td>002</td>
              <td>Griffin</td>
              <td>$150</td>
              <td><button class="accept-btn">Remove</button></td>
            </tr>
            <tr>
              <td>003</td>
              <td>Swanson</td>
              <td>$300</td>
              <td><button class="accept-btn">Remove</button></td>
            </tr>
            <tr>
              <td>004</td>
              <td>Brown</td>
              <td>$250</td>
              <td><button class="accept-btn">Remove</button></td>
            </tr>
          </table>
       </div>
       <br><br><br>
       <a href="#" class="admin-btn" style="width:180px;">Add Department</a>
    </div>
</body>
</html>