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