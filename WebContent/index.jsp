<%@ page import="DAO.FilmDAO"%>
<%@ page import="ticket.DB"%>
<%@ page import="java.sql.*"%>
<%  DB obj_DB_Connection=new DB();
  Connection connection=null;
  connection=obj_DB_Connection.get_connection();
  FilmDAO DAO =new  FilmDAO(connection);
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
    <title>Wills Films</title>
</head>

<body>
	<%@include file="header.jsp" %>
    


    <div id="carouselExampleControls" class="carousel slide carous" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active ">
                <img src="assets/c.jpg" class="d-block w-100 " alt="...">
            </div>
            <div class="carousel-item ">
                <img src="assets/a.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item ">
                <img src="assets/b.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


    <div class="card_container ms-auto">
    	<h1 class=" text-center pb-4">Top Movies</h1>
        <div class="row">
        
        	<%
				try {
			    	ResultSet rs = DAO.MovieList();
			    	
					while(rs.next()) {
						%>
						
							<div class="col-sm-3 mt-3">
				                <div class="card">
				                    <div class="card-body text-center">
				                        <h5 class="card-title"><% out.print(rs.getString("title")); %></h5>
				                        <p class="card-text"><img class="movie" src="<% out.print(rs.getString("image")); %>" alt=""></p>
				                        <a href="movies.jsp?id=<% out.print(rs.getString("id")); %>" class="btn btn-primary text-center">Book Now</a>
				                    </div>
				                </div>
				            </div>
						<%
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			%>
        	
        </div>
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

</html>