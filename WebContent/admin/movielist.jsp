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
                            <a href="adminbookwindow.jsp" class="nav-link align-middle px-0 ">
                                <i class="fs-4 bi-house"><img src="../assets/booking.png" width="50px" alt=""></i> <span
                                    class="ms-1 d-none d-sm-inline" style="color: white;">Booking
                                    window</span>
                            </a>
                        </li>
                        <li>
                            <a href="addmovie.jsp" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-speedometer2"><img src="../assets/mov.png" width="50px" alt=""></i>
                                <span class="ms-1 d-none d-sm-inline" style="color: white;">Add Movie</span> </a>

                        </li>
                        <li>
                            <a href="movielist.jsp" class="nav-link px-0 align-middle aactive">
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
                        <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
                            id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="https://github.com/mdo.png" alt="hugenerd" width="30" height="30"
                                class="rounded-circle">
                            <span class="d-none d-sm-inline mx-1">Admin</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                            <li><a class="dropdown-item" href="#">Sign out</a></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="admin-cont">
        <div class="card">
            <form method="GET" action="">
                <h5 class="card-header"><input type="text" id="title" class="form-control" value="Kamaii - 2020"
                        readonly>
                </h5>
                <div class="card-body">
                    <img src="../assets/medium-cover.jpg" class="col-md-2 me-5 float-md-end mb-5 ms-md-1" alt="">
                    <h6 class="card-title">Director<input id="dir" type="text" class="form-control"
                            value="Special title treatment" readonly>
                    </h6>
                    <h6 class="card-title">Producer<input id="pro" type="text" class="form-control"
                            value="Special title treatment" readonly>
                    </h6>
                    <h6 class="card-title">Cast<input id="cast" type="text" class="form-control"
                            value="Special title treatment" readonly>
                    </h6>
                    <p class="card-text">Ends in <input id="date" type="date" class="form-control" readonly></p>

                    <a href="#" class="btn btn-outline-danger"><img src="../assets/delete.png"></a>
                    <a href="#" class="btn btn-outline-warning" onclick="edit()" id="edit"><img
                            src="../assets/edit.png"></a>
                    <button class="btn btn-outline-success" id="submit" style="display: none;"><img
                            src="../assets/done.png"></button>

                </div>
            </form>
        </div>
    </div>
    </div>
</body>
<script>
    function edit() {
        document.getElementById('submit').style.display = '';
        document.getElementById('edit').style.display = 'none';
        document.getElementById('title').removeAttribute("readonly");
        document.getElementById('dir').removeAttribute("readonly");
        document.getElementById('pro').removeAttribute("readonly");
        document.getElementById('cast').removeAttribute("readonly");
        document.getElementById('date').removeAttribute("readonly");
        document.getElementById('9').removeAttribute("disabled");
        document.getElementById('11').removeAttribute("disabled");
        document.getElementById('4').removeAttribute("disabled");
        document.getElementById('7').removeAttribute("disabled");
        document.getElementById('10').removeAttribute("disabled");

    }


</script>

</html>