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