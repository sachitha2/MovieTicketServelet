<%@page import="DAO.BookingDAO"%>
<%@page import="DAO.ShowTimeDAO"%>
<%@page import="Model.Film"%>
<%@ page import="DAO.FilmDAO"%>
<%@ page import="ticket.DB"%>
<%@ page import="java.sql.*"%>
<%  DB obj_DB_Connection=new DB();
  Connection connection=null;
  connection=obj_DB_Connection.get_connection();
  BookingDAO bookingDAO = new BookingDAO(connection);
  FilmDAO filmDAO = new FilmDAO(connection);
  ShowTimeDAO showTimeDAO = new ShowTimeDAO(connection);
  
  String sQuery = "";
  if(request.getParameter("date") != null){
	  sQuery = " WHERE date = '"+request.getParameter("date")+"'";
  }
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
    <link rel="stylesheet" href="style.css">
    <title>Hello, world!</title>
</head>

<body>
    <%@include file="sidenav.jsp" %>
    <div class="admin-cont">
        <form class="row g-3 admin-form" enctype="multipart/form-data" onsubmit="return checkbox()">
            <h2>Bookings</h2>
            <div class="col-md-6 ">
                <label for="date" class="form-label">Date</label>
                <form method="get" action="">
                	<input name="date" type="date" class="form-control" id="date">
                	<button type="submit" class="btn btn-primary mt-2">Search</button>
                </form>
            </div>
        </form>
        <table class="table admin-table">
            <thead>
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">Film</th>
                    <th scope="col">Date</th>
                    <th scope="col">Time</th>
                    <th scope="col"># of tickets</th>
                    <th scope="col">Price</th>
                    <th scope="col">Username</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <%
	                    	ResultSet rs = bookingDAO.AllBookings("",sQuery);
							try{
								while(rs.next()) {
									%>
									 <tr>
			                            <th scope="row"><% out.print(rs.getString("id")); %></th>
			                            <td><% out.print(filmDAO.MovieNameByTimeId(rs.getString("timeslot"))); %></td>
			                            <td><% out.print(rs.getString("date")); %></td>
			                            <td><% out.print(showTimeDAO.ShowTimeById(rs.getString("timeslot")));  %></td>
			                            <td><% out.print(rs.getString("numtickets")); %></td>
			                             <td><% out.print(rs.getString("total")); %></td>
			                            <td><% 
			                            	if(rs.getString("userid").equals("0")){
			                            		out.print("ADMIN");
			                            	}else{
			                            		out.print(rs.getString("userid"));
			                            	}
			                            %></td>
			                            <td>Booked</td>
			                            <td>
			                            	<!--  <img class="cursor" src="../assets/print.png" width="40" onclick="" alt=""> -->
			                            	<a href="../DeleteABooking?id=<%  out.print(rs.getString("id")); %>"><img class="cursor" src="../assets/delete.png" width="40" onclick="" alt=""></a>
			                            </td>
			                        </tr>
									<% 
								}
							}catch(SQLException e){
								e.printStackTrace();
							}
                    	%>
                       

            </tbody>
        </table>

    </div>
</body>
<script>
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1;
    var yyyy = today.getFullYear();
    if (dd < 10) {
        dd = '0' + dd
    }
    if (mm < 10) {
        mm = '0' + mm
    }
    today = yyyy + '-' + mm + '-' + dd;
    document.getElementById("date").setAttribute("value", today);
</script>

</html>