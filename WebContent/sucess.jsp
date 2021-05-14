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
	<%@include file="header.jsp" %>
    
    <div class="body_container ">
        <div class="success-animation">
            <svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52">
                <circle class="checkmark__circle" cx="26" cy="26" r="25" fill="none" />
                <path class="checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8" />
            </svg>
        </div>
        <h1 class="text-center">Booking Completed</h1>
        <p class="h3 text-center">
            Order confirmation sent to your email.
        </p>
        <p class="h2 text-center">
            Booking id : #<% out.print(request.getParameter("id")); %>
        </p>
        <p class="h4 text-center">
            Take a Screenshot of this page or show the email to the counter.<br>
        </p>
        <p class="h4 text-center">
            Thank you! Hope to see you again.<br>
        </p>
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