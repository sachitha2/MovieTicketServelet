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
  if(request.getParameter("id") != null){
	  sQuery = " and id = '"+request.getParameter("id")+"'";
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

<body onload="load([1,2,4,5,13,18,25,30])">
    <%@include file="sidenav.jsp" %>
    <div class="admin-cont">
        <div class="admin_container">
            <h2 class="mt-5">Online Booking Ticket Printing Window</h2>
            <form class="row g-3" method="GET">

                <div class="col-auto">
                    <label for="id" class="visually-hidden">Password</label>
                    	<form method="get" action="">
                    		<input type="text" name="id"
                        	oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');"
                        	class="form-control" id="id" placeholder="Booking id">
                        
                        	<button type="submit" name="submit" class="btn btn-primary mt-2">Check</button>
                    	</form>
                </div>
                
            </form>
            <div>
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
	                    	ResultSet rs = bookingDAO.AllBookings("ONLINE",sQuery);
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
			                            <td><% out.print(rs.getString("userid")); %></td>
			                            <td>Booked</td>
			                            <td><img class="cursor" src="../assets/print.png" width="40" onclick="" alt=""></td>
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


        </div>
    </div>

</body>



</html>