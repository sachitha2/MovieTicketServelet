<%

String type=(String)session.getAttribute("type");
if(type != null && type.equals("2")){
	response.sendRedirect("../index.jsp");
}
//session.setAttribute("user", null);
%>
 <div class="container-fluid ">
        <div class="row flex-nowrap">
            <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark "
                style="position: fixed;top: 0;left: 0;z-index: 1;">
                <div
                    class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100 ">
                    <a href="#"
                        class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                        <span class="fs-5 d-none d-sm-inline">Wills Film <img src="../assets/logo.png" width="60px"
                                alt=""></span>
                    </a>
                    <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
                        id="menu">
                        <li class="nav-item">
                            <a href="index.jsp" class="nav-link align-middle px-0">
                                <i class="fs-4 bi-house"><img src="../assets/booking.png" width="50px" alt=""></i> <span
                                    class="ms-1 d-none d-sm-inline" style="color: white;">Booking
                                    window</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="onlinebooking.jsp" class="nav-link align-middle px-0 ">
                                <i class="fs-4 bi-house"><img src="../assets/onlineticket.png" width="50px" alt=""></i>
                                <span class="ms-1 d-none d-sm-inline" style="color: white;">Online Booking
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="addmovie.jsp" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-speedometer2"><img src="../assets/mov.png" width="50px" alt=""></i>
                                <span class="ms-1 d-none d-sm-inline" style="color: white;">Add Movie</span> </a>

                        </li>
                        <li>
                            <a href="movielist.jsp" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-table"><img src="../assets/curmovie.png" width="50px" alt=""></i>
                                <span class="ms-1 d-none d-sm-inline" style="color: white;">Movie List</span></a>
                        </li>


                        <li>
                            <a href="bookings.jsp" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-people"><img src="../assets/booked.png" width="50px" alt=""></i> <span
                                    class="ms-1 d-none d-sm-inline" style="color: white;">Bookings</span>
                            </a>
                        </li>
                    </ul>
                    <hr>
                    <div class="dropdown pb-4">
                        <b class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
                            id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="https://github.com/mdo.png" alt="hugenerd" width="30" height="30"
                                class="rounded-circle">
                            <span class="d-none d-sm-inline mx-1">Admin</span>
                        </b>
                        
                        	<ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                            	<li><a class="dropdown-item" href="../Logout">Sign out</a></li>
                        	</ul>
                       
                    </div>
                </div>
            </div>

        </div>
    </div>