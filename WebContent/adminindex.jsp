<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
<%@include file="adminnavbar.jsp" %>
    <div class="content">
        <div class="cardcontainer">
            <div class="card">
                <div class="card-title">  Users</div>
                <div class="card-content" >10</div>
            </div>
            <div class="card">
                <div class="card-title">  Departments</div>
                <div class="card-content" >100</div>
            </div>
            <div class="card">
                <div class="card-title">  Projects</div>
                <div class="card-content" >5</div>
            </div>
        </div>
        <h2>Leave Requests</h2>
        <div class="maincontainer">
            <table>
                <tr>
                  <th>Emp_ID</th>
                  <th>Emp_Name</th>
                  <th>Leave Type</th>
                  <th>Accept/Reject</th>
                </tr>
                <tr>
                  <td>001</td>
                  <td>Griffin</td>
                  <td>Casual</td>
                  <td><button class="accept-btn">Accept</button><button class="accept-btn">Reject</button></td>
                </tr>
                <tr>
                  <td>Lois</td>
                  <td>Griffin</td>
                  <td>$150</td>
                  <td><button class="accept-btn">Accept</button><button class="accept-btn">Reject</button></td>
                </tr>
                <tr>
                  <td>Joe</td>
                  <td>Swanson</td>
                  <td>$300</td>
                  <td><button class="accept-btn">Accept</button><button class="accept-btn">Reject</button></td>
                </tr>
                <tr>
                  <td>Cleveland</td>
                  <td>Brown</td>
                  <td>$250</td>
                  <td><button class="accept-btn">Accept</button><button class="accept-btn">Reject</button></td>
                </tr>
              </table>
        </div>
        <div class="buttoncontainer">
            <a href="#" class="admin-btn">Apply Leave</a> 
            <a href="#" class="admin-btn">Add Employees</a> 
            <a href="#" class="admin-btn">Add Departments</a> 
        </div>
    </div>
</body>
</html>