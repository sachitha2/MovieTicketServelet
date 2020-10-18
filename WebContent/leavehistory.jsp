<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Leave History</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
  <%@include file="adminnavbar.jsp" %>
    <div class="content" style="margin-top: 80px;">
        <h2>My Leave History</h2>
        <div class="maincontainer">
            <table>
                <tr>
                  <th>Start Date</th>
                  <th>End Date</th>
                  <th>Leave Type</th>
                  <th>Status</th>
                </tr>
                <tr>
                  <td>2020/10/10</td>
                  <td>2020/11/01</td>
                  <td>Casual</td>
                  <td>Pending</td>
                </tr>
                <tr>
                  <td>2020/10/10</td>
                  <td>2020/11/01</td>
                  <td>Casual</td>
                  <td>Accepted</td>
                </tr>
                <tr>
                  <td>2020/10/10</td>
                  <td>2020/11/01</td>
                  <td>Sick</td>
                  <td>Rejected</td>
                </tr>
                <tr>
                  <td>2020/10/10</td>
                  <td>2020/11/01</td>
                  <td>Sick</td>
                  <td>Rejected</td>
                </tr>
              </table>
        </div>
        <div class="buttoncontainer">
            <a href="#" class="admin-btn">Apply Leave</a> 
        </div>
    </div>
</body>
</html>