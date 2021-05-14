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
    <div class="admin-cont ">
        <form class="row g-3 admin-form"  onsubmit="return checkbox()" action="../AddFilm" method="post">
            <h2>Add a New Movie</h2>
            <div class="col-md-6">
                <label for="title" class="form-label">Title</label>
                <input type="text" required class="form-control" id="title" name="title" aria-describedby="helptxt">
                <div id="helptxt" class="form-text">
                    Follow the format > Film Name - Year
                </div>
            </div>
            <div class="col-md-6 mt-n6">
                <label for="prod" class="form-label">Producer</label>
                <input type="text" required class="form-control" id="prod" name="prod">
            </div>
            <div class="col-6">
                <label for="Director" class="form-label">Director</label>
                <input type="text" required class="form-control" id="Director" name="director">
            </div>
            <div class="col-md-6 mt-n6">
                <h5>Showing times</h5>
                <h6 id="err" style="display: none; color:red;">Please Select at least one</h6>
                <input type="checkbox" class="form-check-input" name="time9" value="9" id="prod">
                <label for="prod" class="form-check-label me-3">9.00 a.m</label>
                <input type="checkbox" class="form-check-input" name="time11" value="11" id="prod">
                <label for="prod" class="form-check-label me-3">11.00 a.m</label>
                <input type="checkbox" class="form-check-input" name="time4" value="4" id="prod">
                <label for="prod" class="form-check-label me-3">4.00 p.m</label>
                <input type="checkbox" class="form-check-input" name="time7" value="7" id="prod">
                <label for="prod" class="form-check-label me-3">7.00 p.m</label>
                <input type="checkbox" class="form-check-input" name="time10" value="10" id="prod">
                <label for="prod" class="form-check-label me-3">10.00 p.m</label>
            </div>
            <div class="col-12">
                <label for="cast" class="form-label">Cast</label>
                <input type="text" required class="form-control"  placeholder="Names seperated by commas" name="cast">
            </div>
            <div class="col-md-12">
                <label for="date" class="form-label">Date of ending</label>
                <input type="date" required class="form-control" id="date" name="edate">
            </div>
            <div class="col-md-12">
                <label for="date" class="form-label">Cover Image URL</label>
                <input type="text" required class="form-control" id="imageUrl" name="image">
            </div>
           
            <div class="col-12">
                <button type="submit" class="btn btn-primary">Add Movie</button>
            </div>
        </form>
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
    var d = new Date();
    var ddd = d.getDate();
    var mmm = d.getMonth() + 7;
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
    document.getElementById("date").setAttribute("max", end);

    function checkbox() {

        var form_data = new FormData(document.querySelector("form"));

        if (form_data.has("time9") || form_data.has("time11") || form_data.has("time4") || form_data.has("time7") || form_data.has("time10")){
        	document.getElementById("err").style.visibility = "hidden";
            return true;
        }
        else {
            
            document.getElementById("err").style.display = "";
            return false;
        }

    }
</script>

</html>