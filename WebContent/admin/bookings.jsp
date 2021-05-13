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
                            <a href="movielist.jsp" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-table"><img src="../assets/curmovie.png" width="50px" alt=""></i>
                                <span class="ms-1 d-none d-sm-inline" style="color: white;">Movie List</span></a>
                        </li>


                        <li>
                            <a href="bookings.jsp" class="nav-link px-0 align-middle aactive">
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
        <form class="row g-3 admin-form" enctype="multipart/form-data" onsubmit="return checkbox()">
            <h2>Bookings</h2>
            <div class="col-md-6">
                <label for="date" class="form-label">Date</label>
                <input type="date" class="form-control" id="date">
            </div>
            <div class="col-md-4">
                <label for="time" class="form-label">Time</label>
                <select id="time" class="form-select" id="time" required>
                    <option value="a" selected hidden>---select</option>
                    <option value="9">9.00 a.m</option>
                    <option value="11">11.00 a.m</option>
                    <option value="4">4.00 p.m</option>
                    <option value="7">7.00 p.m</option>
                    <option value="10">10.00 p.m</option>
                </select>
            </div>
            <div class="col-12 ms-6">
                <button type="submit" class="btn btn-primary">Search</button>
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
                    <th scope="col">Username</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark suckerburg</td>
                    <td>2021-10-12</td>
                    <td>9.00 a.m</td>
                    <td>3</td>
                    <td>Kasun bandara</td>
                    <td>issued</td>
                    <td><img src="../assets/delete.png" width="20" onclick="" alt=""></td>
                </tr>

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