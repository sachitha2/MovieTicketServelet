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
            <a class="navbar-brand" href="#"><img src="assets/logo.png" alt="" height="40">
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
                        <a class="nav-link btn btn-outline" href="#" tabindex="-1">Login</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link btn btn-outline" href="#" tabindex="-1">Sign Up</a>
                    </li>
                    <!-- -->
                </ul>
            </div>
        </div>
    </nav>


    <div class="body_container">
        <img src="assets/medium-cover.jpg" class="rounded mx-auto mt-4 d-block" alt="...">
        <div class="row">
            <div class="col-4 justify-content-center text-center">
                <h2 class="mb-5">The Movie</h2>
            </div>
            <div class=" summary">

                <div class="p-2 h5 justify-content-left text-end">
                    Name of Movie - <span class="ms-5">Kamala</span>
                </div>
                <div class="p-2 h5 justify-content-left text-end">
                    Date - <span class="ms-5">Kamala</span>
                </div>
                <div class="p-2 h5 justify-content-left text-end">
                    No. of tickets - <span class="ms-5">Kamala</span>
                </div>
                <div class="p-2 h4 text-end">
                    Total Amount - <span class="ms-1">Rs. Kamala</span>
                </div>
            </div>
            <div class="d-grid gap-2 col-6 mx-auto mb-5 mt-3">
                <button type="button" class="btn btn-primary btn-lg">Continue</button>
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