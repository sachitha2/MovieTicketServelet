<%@ page import="dao.EmployeeDAO"%>
<%@ page import="employee.DB"%>
<%@ page import="java.sql.*"%>
<%  
	
	DB obj_DB_Connection=new DB();
  Connection connection=null;
  connection=obj_DB_Connection.get_connection();
  EmployeeDAO DAO =new  EmployeeDAO(connection);
  String id = "";
  String ume=session.getAttribute("uname").toString(); 
  id = DAO.getUserId(ume)+"";
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Apply Leave</title>
        <link rel="stylesheet" href="style.css">
    </head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <div class="content">
       <h2>Apply for Leave</h2>
       <div class="mini-container" style="height: 450px;">
        <form action="AddLeave" method="post">
            <label for="empid" class="label">Employee ID</label>
            <input type="text" name="id" id="empid" readonly value="<% out.print(id); %>"><br>
            <label for="leavetype" class="label">Leave Type</label>
            <select name="leavetype" id="leaveType" place required>
                <option value="" selected disabled>--- Select one</option>
                <option value="c">Casual</option>
                <option value="s">Sick</option>
                <option value="wfh">Work from Home</option>
            </select> <br>
            <label for="sDate" class="label">Start Date</label>
            <input type="date" name="sDate" id="sdate" required><br>
            <label for="days" class="label" >No. of Days</label>
            <input type="number" value="1" name="" onchange="calcenddate()" id="days" style="margin-right: 30px;" required>  (10 remaining)<br>
            <label for="edate" class="label">End Date</label>
            <input type="date" name="eDate" id="edate" required><br>
            <label for="reason" class="label">Reason</label>
            <input type="text" name="reason" id="reason" style="height: 80px;" required><br>
            <br><br>
            <p style="text-align:center;font-size:20px;color:red">
                <%
                if(request.getParameter("msg")!=null){
                out.print(request.getParameter("msg"));
                }
                %>
                </p>
            <input class="accept-btn" type="submit" name="addLe"  style="margin-right:150px ;"><input type="reset" class="accept-btn">
            
        </form>
       </div>
    </div>
</body>
<script>
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; 
    var yyyy = today.getFullYear();
    if(dd<10){
            dd='0'+dd
        } 
        if(mm<10){
            mm='0'+mm
        } 
    today = yyyy+'-'+mm+'-'+dd;
    document.getElementById("sdate").setAttribute("min", today);
</script>
</html>