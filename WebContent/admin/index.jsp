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
    <title>Ticket Booking</title>
</head>

<body>
   <%@include file="sidenav.jsp" %>
    <div class="admin-cont">
        <div class="body_container">
            <div class="seats">
                <div class="movie-container">
                    <h3>Seat Arrangement</h3>
                    <label for="movie">Price </label>
                    <select id="movie" disabled>
                        <option value="450">Rs. 450.00</option>
                    </select>
                    <div class="mb-4" style="width: 200px;">
                        <label for="film" class="form-label">Film</label>
                        <select id="film" class="form-select" onchange="takeFilmSlots(this.value)" required>
                            <option value="0">Select a Film</option>
                           	<%
								try {
							    	ResultSet rs = DAO.MovieList();
							    	
									while(rs.next()) {
										%>
										
											<option value="<% out.println(rs.getString("id")); %>"><% out.println(rs.getString("title")); %></option>
										<%
									}
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							%>
                        </select>
                    </div>
                    <div class="mb-4">
                        <label for="date" class="form-label">Date</label>
                        <input type="date" id="date" class="form-control" required>
                    </div>
                    <div class="mb-4" style="width: 200px;">
                        <label for="time" class="form-label">Time</label>
                        <select id="time" class="form-select" required>
                            <option value="0">Select a Time Slot</option>
                            
                        </select>
                    </div>
                    <p id="err" style="color:red;font-size:20px"></p>
                    <button onclick="load()" type="button" class="btn btn-success mb-2">Next</button>
                    <ul class="showcase" id="showcase">
                        <li>
                            <div class="seat"></div>
                            <small>N/A</small>
                        </li>
                        <li>
                            <div class="seat selected"></div>
                            <small>Selected</small>
                        </li>
                        <li>
                            <div class="seat occupied"></div>
                            <small>Occupied</small>
                        </li>
                    </ul>

                    <div class="container" id="filmHallView">
                        <div class="screen"></div>

                        <div class="row">
                            <div class="seat" value="1">1</div>
                            <div class="seat" value="2">2</div>
                            <div class="seat" value="3">3</div>
                            <div class="seat" value="4">4</div>
                            <div class="seat" value="5">5</div>
                            <div class="seat" value="6">6</div>
                            <div class="seat" value="7">7</div>
                            <div class="seat" value="8">8</div>
                        </div>
                        <div class="row">
                            <div class="seat" value="9">9</div>
                            <div class="seat" value="10">10</div>
                            <div class="seat" value="11">11</div>
                            <div class="seat " value="12">12</div>
                            <div class="seat " value="13">13</div>
                            <div class="seat" value="14">14</div>
                            <div class="seat" value="15">15</div>
                            <div class="seat" value="16">16</div>
                        </div>
                        <div class="row">
                            <div class="seat" value="17">17</div>
                            <div class="seat" value="18">18</div>
                            <div class="seat" value="19">19</div>
                            <div class="seat" value="20">20</div>
                            <div class="seat" value="21">21</div>
                            <div class="seat" value="22">22</div>
                            <div class="seat " value="23">23</div>
                            <div class="seat " value="24">24</div>
                        </div>
                        <div class="row">
                            <div class="seat" value="25">25</div>
                            <div class="seat" value="26">26</div>
                            <div class="seat" value="27">27</div>
                            <div class="seat" value="28">28</div>
                            <div class="seat" value="29">29</div>
                            <div class="seat" value="30">30</div>
                            <div class="seat" value="31">31</div>
                            <div class="seat" value="32">32</div>
                        </div>
                        <div class="row">
                            <div class="seat" value="33">33</div>
                            <div class="seat" value="34">34</div>
                            <div class="seat" value="35">35</div>
                            <div class="seat " value="36">36</div>
                            <div class="seat " value="37">37</div>
                            <div class="seat" value="38">38</div>
                            <div class="seat" value="39">39</div>
                            <div class="seat" value="40">40</div>
                        </div>
                        <div class="row">
                            <div class="seat" value="41">41</div>
                            
                            <div class="seat" value="42">42</div>
                            <div class="seat" value="43">43</div>
                            <div class="seat " value="44">44</div>
                            <div class="seat " value="45">45</div>
                            <div class="seat " value="46">46</div>
                            <div class="seat" value="47">47</div>
                            <div class="seat" value="48">48</div>
                        </div>

                        <p class="text h5">
                            You have selected <span id="count">0</span> seats for the total price of Rs. <span
                                id="total">0</span>
                        </p>
                        <div class="d-grid gap-2 col-6 mx-auto">
                            <button type="button" class="btn btn-primary btn-lg" onclick="bookTickets()">Confirm</button>
                        </div>
                    </div>
                </div>



            </div>


        </div>
    </div>
</body>

<script>
	document.getElementById('filmHallView').style.visibility = "hidden";
	document.getElementById('showcase').style.visibility = "hidden";
	document.getElementById('date').valueAsDate = new Date();
    const container = document.querySelector('.container');
    const seats = document.querySelectorAll('.row .seat:not(.occupied)');
    const count = document.getElementById('count');
    const total = document.getElementById('total');
    const movieSelect = document.getElementById('movie');

    let ticketPrice = +movieSelect.value;

    //Update total and count
    function updateSelectedCount() {
        const selectedSeats = document.querySelectorAll('.row .seat.selected');
        const selectedSeatsCount = selectedSeats.length;
        count.innerText = selectedSeatsCount;
        total.innerText = selectedSeatsCount * ticketPrice;
    }

    //Movie Select Event
    movieSelect.addEventListener('change', e => {
        ticketPrice = +e.target.value;
        updateSelectedCount();
    });
    var selected = [];
    //Seat click event
    container.addEventListener('click', e => {
        if (e.target.classList.contains('seat') && !e.target.classList.contains('occupied')) {
            e.target.classList.toggle('selected');
            selected.push(e.target.getAttribute("value"));
            console.log(selected);
        }
        updateSelectedCount();
    });
    
   
	var i = 0;
	function takeFilmSlots(id){
		if(id != 0){
			
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status == 200) {
        				
						var myArr = JSON.parse(this.responseText);
						console.log(myArr['names']);
						x  = document.getElementById('time');
						x.innerHTML = "";
						var i = 0;
						a = myArr['names'];
						slotId = myArr['TimeSlotId'];
						status = myArr['status'];
						var option = document.createElement("option");
			        	  option.text = "Select a time slot";
			        	  option.value = 0;
			        	  x.add(option);
						a.forEach(element => {
				        	console.log(element);
				        	if(status[i] == "1"){
				        	var option = document.createElement("option");
				        	  option.text = element;
				        	  option.value = slotId[i];
				        	  x.add(option);
				        	}
							i++;
				        });
						
						
   				}
			};
			xmlhttp.open("GET", '../TimeSlotsOfAMV?id='+id, true);//generating  get method link
			xmlhttp.send();
			//Request for time slots<option value="11">11.00 a.m</option>
            //<option value="4">4.00 p.m</option>
            //<option value="7">7.00 p.m</option>
            //<option value="10">10.00 p.m</option>
			
		}else{
			x  = document.getElementById('time');
			x.innerHTML = "";
			var option = document.createElement("option");
	      	  option.text = "Select a time slot";
	      	  option.value = 0;
	      	  x.add(option);
			
		}
	}
	
    function load() {
    		var filmname =  document.getElementById('film').value;
    		var date = document.getElementById('date').value;
    		var timeslot =  document.getElementById('time').value;
    		
    		console.log(filmname);
    		console.log(date);
    		console.log(timeslot);
    		
    		if(filmname == 0){
    			document.getElementById('filmHallView').style.visibility = "hidden";
    			document.getElementById('showcase').style.visibility = "hidden";
    			document.getElementById('err').innerHTML = "Please select a film";
    		}else if(timeslot == 0){
    			document.getElementById('filmHallView').style.visibility = "hidden";
    			document.getElementById('showcase').style.visibility = "hidden";
    			document.getElementById('err').innerHTML = "Please select a time slot";
    		}else{
    			
    	
    			
    	
    						var xmlhttp = new XMLHttpRequest();
    	        			xmlhttp.onreadystatechange = function() {
    	        			if (this.readyState === 4 && this.status == 200) {
		    	        				document.getElementById('filmHallView').style.visibility = "visible";
		    	        				document.getElementById('showcase').style.visibility = "visible";
		    	        				document.getElementById('err').innerHTML = "";
    									var myArr = JSON.parse(this.responseText);
    									console.log(myArr['sheet']);
    									console.log('i',++i);
    									a = myArr['sheet'];
    									//clear all before
    									for (i = 1;i <= 46;i++){
    										document.querySelector("div[value='" + i + "']").classList.remove('occupied');
    									}
    							        a.forEach(element => {
    							        	console.log(element);
    							            document.querySelector("div[value='" + element + "']").classList.add('occupied');

    							        });
    	           				}
    	        			};
    	        			xmlhttp.open("GET", '../SheetAvailability?filmId='+filmname+'&slotId='+timeslot+'&dateV='+date, true);//generating  get method link
    	        			xmlhttp.send();
    		}

    	
    }


    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; //January is 0!
    var yyyy = today.getFullYear();
    if (dd < 10) {
        dd = '0' + dd
    }
    if (mm < 10) {
        mm = '0' + mm
    }
    var d = new Date();
    var ddd = d.getDate();
    var mmm = d.getMonth() + 2; //January is 0!
    var yyyyy = d.getFullYear();
    if (ddd < 10) {
        ddd = '0' + ddd
    }
    if (mmm < 10) {
        mmm = '0' + mmm
    }
    end = yyyyy + '-' + mmm + '-' + ddd;
    today = yyyy + '-' + mm + '-' + dd;
    document.getElementById("date").setAttribute("min", today);
    document.getElementById("date").setAttribute("value", today);
    document.getElementById("date").setAttribute("max", end);

    
    function bookTickets(){
    	console.log(selected);
    	var numTickets = selected.length;
    	
    	
    	var sheetOrder = "";
    	for(i = 1;i <= numTickets;i++){
    		if(numTickets == i){
    			sheetOrder += selected[i-1];
    		}else{
    			sheetOrder += selected[i-1]+",";
    		}
    	}
    	
    	var filmname =  document.getElementById('film').value;
		var date = document.getElementById('date').value;
		var timeslot =  document.getElementById('time').value;
    	
		console.log("Total tickets->",numTickets);
    	console.log("sheets order -> ",sheetOrder);
    	console.log("film id",filmname);
    	console.log("date",date);
    	console.log("timeslot",timeslot);
    	
    	if(numTickets != 0){
    		var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
			if (this.readyState === 4 && this.status == 200) {
        				
						//var myArr = JSON.parse(this.responseText);
						//alert(myArr);
						window.location.assign("index.jsp");
						
   				}
			};
			xmlhttp.open("GET", '../BookTickets?tickets='+numTickets+'&sheets='+sheetOrder+'&mtimeId='+timeslot+'&userId=0&bDate='+date, true);
			xmlhttp.send();
    	}else{
    		//TODO resolve err here
    	}
    }
</script>

</html>