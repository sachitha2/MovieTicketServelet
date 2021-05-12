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


    <div class="container">
        <h1>Profile Page</h1>
        <img src="assets/profileimg.png" class="mb-5 border border-success rounded" alt="" width="400">
        <form action="a" method="GET">
            <div class="mb-3">
                <label for="email" class="form-label">Email address</label>
                <input type="email" name="email" class="form-control" id="email" readonly>

            </div>
            <div class="mb-3">
                <label for="fname" class="form-label">First Name</label>
                <input type="password" name="fname" class="form-control" id="fname" readonly required>

            </div>
            <div class="mb-3">
                <label for="lname" class="form-label">Last Name</label>
                <input type="password" name="lname" class="form-control" id="lname" readonly required>
            </div>
            <div class="mb-3">
                <label for="lname" class="form-label">Mobile Number</label>
                <input type="password" name="mobile" class="form-control" id="mobile" readonly required>
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Address</label>
                <input type="password" name="ad1" class="form-control mb-1" id="ad1" placeholder="Address line 1"
                    readonly required>
                <input type="password" name="ad2" class="form-control mb-1" id="ad2" placeholder="Address line 2"
                    readonly required>
                <input type="password" name="city" class="form-control mb-1" id="city" placeholder="City" readonly
                    required>
                <input type="password" name="province" class="form-control mb-1" id="province" placeholder="Province"
                    readonly required>
                <input type="password" name="zip" class="form-control mb-1" id="zip" placeholder="Postal Code" readonly
                    required>
            </div>

            <button type="submit" class="btn btn-primary" id="submitbtn" style="display: none;">Submit</button>
            <button type="reset" class="btn btn-secondary" id="reset" style="display: none;">Reset</button>
            <button type="button" class="btn btn-warning" id="editBtn" onclick="activate()">Edit</button>
        </form>


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

<script>
    function activate() {
        document.getElementById('editBtn').style.display = 'none';
        document.getElementById('submitbtn').style.display = '';
        document.getElementById('reset').style.display = '';
        document.getElementById('fname').readOnly = false;
        document.getElementById('lname').readOnly = false;
        document.getElementById('mobile').readOnly = false;
        document.getElementById('ad1').readOnly = false;
        document.getElementById('ad2').readOnly = false;
        document.getElementById('city').readOnly = false;
        document.getElementById('province').readOnly = false;
        document.getElementById('zip').readOnly = false;


    }


</script>

</html>