<%@page import="Model.UserModel"%>
<%@page import="DAO.UserDAO"%>
<%@ page import="DAO.EmployeeDAO"%>
<%@ page import="ticket.DB"%>
<%@ page import="java.sql.*"%>
<%  DB obj_DB_Connection=new DB();
  Connection connection=null;
  connection=obj_DB_Connection.get_connection();
  UserDAO DAO =new  UserDAO(connection);
  String email=(String)session.getAttribute("email");
  UserModel userModel = DAO.getUserData(email);
  if(userModel == null){
	  response.sendRedirect("index.jsp");
  }
  email = null;
%>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>Profile</title>
</head>

<body>
<%@include file="header2.jsp"  %>
    
    <div class="container">
        <h1>Profile Page</h1>
        <img src="assets/profileimg.png" class="mb-5 border border-success rounded" alt="" width="400">
        <form action="a" method="GET">
            <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input type="email" name="email" class="form-control" id="email" value="<% out.print(userModel.getEmail()); %>" readonly>

            </div>
            <div class="mb-3">
                <label for="fname" class="form-label">First Name</label>
                <input type="text" name="fname" class="form-control" id="fname" value="<% out.print(userModel.getFname()); %>" readonly required>

            </div>
            <div class="mb-3">
                <label for="lname" class="form-label">Last Name</label>
                <input type="text" name="lname" class="form-control" id="lname" value="<% out.print(userModel.getLname()); %>" readonly required>
            </div>
            <div class="mb-3">
                <label for="lname" class="form-label">Mobile Number</label>
                <input type="text" name="mobile" class="form-control" id="mobile" value="<% out.print(userModel.getTp()); %>" readonly required>
            </div>
            

            <button type="submit" class="btn btn-primary" id="submitbtn" style="display: none;">Submit</button>
            <button type="reset" class="btn btn-secondary" id="reset" style="display: none;">Reset</button>
            <button type="button" class="btn btn-warning" id="editBtn" onclick="activate()">Edit</button>
        </form>


    </div>


    <footer class="bg-light text-center text-lg-start">
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2021 Copyright:
            <a class="text-dark" href="https://mdbootstrap.com/">Wills Films</a>
        </div>
        <!-- Copyright -->
    </footer>
</body>

<script>
    function activate() {
        document.getElementById('editBtn').style.display = 'none';
        document.getElementById('submitbtn').style.display = '';
        document.getElementById('reset').style.display = '';
        document.getElementById('fname').readOnly = false;
        document.getElementById('lname').readOnly = false;
        document.getElementById('mobile').readOnly = false;
        document.getElementById('ad1').readOnly = false;
        document.getElementById('ad2').readOnly = false;
        document.getElementById('city').readOnly = false;
        document.getElementById('province').readOnly = false;
        document.getElementById('zip').readOnly = false;


    }


</script>

</html>