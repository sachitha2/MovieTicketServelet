<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Leave Types</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
  <%@include file="adminnavbar.jsp" %>
    <div class="content" style="margin-top: 80px;">
        <h2>Leave Types</h2>
        <div class="maincontainer">
            <table>
                <tr>
                  <th>Leave Type</th>
                  <th>Max Leaves</th>
                  <th>Update</th>
                  <th>Delete</th>
                </tr>
                <tr>
                  <td>Casual</td>
                  <td>2020/11/01</td>
                  <td><button class="accept-btn">Update</button></td>
                  <td><button class="accept-btn">Delete</button></td>
                </tr>
                <tr>
                  <td>Sick</td>
                  <td>2020/11/01</td>
                  <td><button class="accept-btn">Update</button></td>
                  <td><button class="accept-btn">Delete</button></td>
                </tr>
                <tr>
                  <td>Work from Home</td>
                  <td>2020/11/01</td>
                  <td><button class="accept-btn">Update</button></td>
                  <td><button class="accept-btn">Delete</button></td>
                </tr>
                
              </table>
        </div>
        <div class="buttoncontainer">
            <a href="#" class="admin-btn">Add Type</a> 
        </div>
    </div>
</body>
</html>