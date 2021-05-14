<%@page import="DAO.ShowTimeDAO"%>
<%@ page import="DAO.FilmDAO"%>
<%@ page import="ticket.DB"%>
<%@ page import="java.sql.*"%>
<%  DB obj_DB_Connection=new DB();
  Connection connection=null;
  connection=obj_DB_Connection.get_connection();
  FilmDAO DAO =new  FilmDAO(connection);
  ShowTimeDAO showDao = new ShowTimeDAO(connection);
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
      
        <%
				try {
			    	ResultSet rs = DAO.MovieList();
			    	
					while(rs.next()) {
						%>
	             			<div class="card">
					            <form method="post" action="../UpdateMV">
					                <h5 class="card-header">Film Name<input name="title" type="text" id="title<% out.print(rs.getString("id")); %>" class="form-control" value="<% out.print(rs.getString("title")); %>"
					                        readonly>
					                </h5>
					                <div class="card-body">
					                    <img src="<% out.print(rs.getString("image")); %>" class="col-md-2 me-5 float-md-end mb-5 ms-md-1" alt="">
					                    <h6 class="card-title">Id<input id="fid<% out.print(rs.getString("id")); %>" type="text" class="form-control" name="fid"
					                            value="<% out.print(rs.getString("id")); %>" readonly>
					                    </h6>
					                    <h6 class="card-title">Director<input id="dir<% out.print(rs.getString("id")); %>" type="text" class="form-control" name="director"
					                            value="<% out.print(rs.getString("director")); %>" readonly>
					                    </h6>
					                    <h6 class="card-title">Producer<input id="pro<% out.print(rs.getString("id")); %>" type="text" class="form-control"
					                            value="<% out.print(rs.getString("producer")); %>" name="producer" readonly>
					                    </h6>
					                    <h6 class="card-title">Cast<input id="cast<% out.print(rs.getString("id")); %>" type="text" class="form-control"
					                            value="<% out.print(rs.getString("cast")); %>" name="cast" readonly>
					                    </h6>
					                    
					                    <h6 class="card-title">Cover Image URL<input id="image<% out.print(rs.getString("id")); %>" type="text" class="form-control"
					                            value="<% out.print(rs.getString("image")); %>" name="image" readonly>
					                    </h6>
					                    <p class="card-text">Ends in <input id="date<% out.print(rs.getString("id")); %>" name="edate" value="<% out.print(rs.getString("edate")); %>" type="date" class="form-control" readonly></p>
					
										<h6>Show Times</h6>
										<h5><% 
											ResultSet showRS = showDao.ShowTimes(rs.getString("id"));
											try{
												while(showRS.next()) {
													if(showRS.getString("status").equals("1")){
														%>
														<button type="button" class="btn btn-outline-danger"><% out.println(showRS.getString("timeslot")); %></button>
														<%
													}else{
														%>
														<button type="button" class="btn  btn-outline-success"><% out.println(showRS.getString("timeslot")); %></button>
														<%
													}
												}
											}catch(SQLException e){
												e.printStackTrace();
											}
										
										%></h5>
					                    <a href="../DelAFilm?id=<% out.print(rs.getString("id")); %>" class="btn btn-outline-danger"><img src="../assets/delete.png"></a>
					                    <b  class="btn btn-outline-warning" onclick="edit(<% out.print(rs.getString("id")); %>)" id="edit<% out.print(rs.getString("id")); %>"><img
					                            src="../assets/edit.png"></b>
					                    <button class="btn btn-outline-success" type="submit" id="submit<% out.print(rs.getString("id")); %>" style="display: none;"><img
					                            src="../assets/done.png"></button>
					
					                </div>
					            </form>
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
</body>
<script>
    function edit(id) {
        document.getElementById('submit'+id).style.display = '';
        document.getElementById('edit'+id).style.display = 'none';
        document.getElementById('title'+id).removeAttribute("readonly");
        document.getElementById('image'+id).removeAttribute("readonly");
        document.getElementById('dir'+id).removeAttribute("readonly");
        document.getElementById('pro'+id).removeAttribute("readonly");
        document.getElementById('cast'+id).removeAttribute("readonly");
        document.getElementById('date'+id).removeAttribute("readonly");

    }


</script>

</html>