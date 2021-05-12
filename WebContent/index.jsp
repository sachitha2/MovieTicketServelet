<%@ page import = "java.io.*,java.util.*" %>
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
    <title>Hello, world!</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #234661;">
        <div class="container-fluid">
            <a class="navbar-brand" href=""><img src="assets/logo.png" alt="" height="40">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ">
                    <li class="nav-item ">
                        <a class="nav-link active btn btn-outline" href="#" tabindex="-1">Home</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link btn btn-outline" href="#" tabindex="-1">Browse</a>
                    </li>
                </ul>
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item ">
                        <a class="nav-link btn btn-outline" href="profile.jsp" tabindex="-1"><img
                                src="assets/profile.png" alt="" width="30"></a>
                    </li>
                    <!-- 
                        <li class="nav-item ">
                            <a class="nav-link btn btn-outline" href="#" tabindex="-1">Logout</a>
                        </li> 
                    -->
                    <li class="nav-item ">
                        <a class="nav-link btn btn-outline" href="login.jsp" tabindex="-1">Login</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link btn btn-outline" href="register.jsp" tabindex="-1">Register</a>
                    </li>
                    <!-- -->
                </ul>
            </div>
        </div>
    </nav>


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
        <div class="row">
            <div class="col-sm-2">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">The Movies</h5>
                        <p class="card-text"><img class="movie" src="assets/mov1.jpg" alt=""></p>
                        <a href="#" class="btn btn-primary text-center">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">The Movies</h5>
                        <p class="card-text"><img class="movie" src="assets/mov1.jpg" alt=""></p>
                        <a href="#" class="btn btn-primary text-center">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">The Movies</h5>
                        <p class="card-text"><img class="movie" src="assets/mov1.jpg" alt=""></p>
                        <a href="#" class="btn btn-primary text-center">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">The Movies</h5>
                        <p class="card-text"><img class="movie" src="assets/mov1.jpg" alt=""></p>
                        <a href="#" class="btn btn-primary text-center">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">The Movies</h5>
                        <p class="card-text"><img class="movie" src="assets/mov1.jpg" alt=""></p>
                        <a href="#" class="btn btn-primary text-center">Book Now</a>
                    </div>
                </div>
            </div>


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