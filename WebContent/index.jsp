<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>TRIS Home</title>

<!-- Bootstrap core and CSS -->
<link rel="stylesheet" href="bootstrap-4.4.1-dist/css/bootstrap.css">
<link rel="stylesheet" href="res_it19069432/css/template.dark.css">
<link rel="stylesheet" href="res_it19069432/css/tris-custom-styles.css">
<link rel="icon" href="res_it19069432/images/favicon.png"
	type="image/x-icon">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
</head>
<body>

	<nav class="custom-nav site-header navbar navbar-expand-lg">
		<!--a class="navbar-brand" href="#">Tris HR Protal • Home</a-->
		<div class="container d-flex justify-content-center custom-header">
			<a href="#"><img style="margin-right: 10px;" width=80px
				src="res_it19069432/images/TRIS_LWB.png"></a>
			<h3>HR Portal</h3>
		</div>
	</nav>

	<nav class="site-header sticky-top py-1">
		<div
			class="container d-flex flex-column flex-md-row justify-content-center">
			<a class="py-2 d-none d-md-inline-block nav-item active-tab" href="#">Home</a>
			<a class="py-2 d-none d-md-inline-block nav-item"
				href="homeevents.jsp">Events</a> <a
				class="py-2 d-none d-md-inline-block nav-item" href="homeabout.jsp">About</a>
			<a class="py-2 d-none d-md-inline-block nav-item"
				href="homesupport.jsp">Support</a>
		</div>
	</nav>

	<div class="container home-container d-flex flex-column"
		style="background: transparent url('res_it19069432/images/interface/red_bg.png') no-repeat center center/cover;">
		<div class="row align-items-center justify-content-center no-gutters ">
			<div class="col-12 col-md-5 col-lg-4 py-8 py-md-11 px-5 custom-panel">
				<h1 class="font-bold text-center">Sign in</h1>
				<p class="text-center mb-6">Welcome to the official of TRIS HR
					Portal. Please Sign in to get started.</p>

				<form class="mb-6" action="LoginControllerServlet" method="post">
					<div class="form-label-group">
						<input type="text" name="username" class="form-control"
							placeholder="User ID" required autofocus> <br>
					</div>
					<div class="form-label-group">
						<input type="password" name="password" class="form-control"
							placeholder="Password" required> <br>
					</div>
					<div class="form-group d-flex justify-content-end">
						<a class="custom-a" href="SecurityControllerServlet">Reset
							password</a>
					</div>
					<button class="btn btn-lg btn-block btn-danger " type="submit">Sign
						in</button>
				</form>
				<p class="text-center">
					Don't have an account? <a class="custom-a"
						href="HomeControllerServlet">Contact</a> the Administrator.
				</p>
			</div>
		</div>
	</div>



	<hr class="custom-hr">

	<footer class="container-fluid py-5 custom-footer footer">
		<div class="row">
			<div class="col-12 col-md">
				<img style="margin-left: 10px;" width=46px
					src="res_it19069432/images/TRISMLW.png"> <small
					class="d-block mb-3 text-muted">&copy;2020 Tris HRP.</small>
			</div>
			<div class="col-6 col-md">
				<h5>Site Navigation</h5>
				<ul class="list-unstyled text-small">
					<li><a class="text-muted" href="#">Home</a></li>
					<li><a class="text-muted" href="#">Departments</a></li>
					<li><a class="text-muted" href="#">About us</a></li>
					<li><a class="text-muted" href="#">Contact us</a></li>
					<li><a class="text-muted" href="#">Forgot Password</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>Departments</h5>
				<ul class="list-unstyled text-small">
					<li><a class="text-muted" href="#">IT</a></li>
					<li><a class="text-muted" href="#">HRM</a></li>
					<li><a class="text-muted" href="#">R &amp; D</a></li>
					<li><a class="text-muted" href="#">Marketing</a></li>
					<li><a class="text-muted" href="#">Accounting</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>About us</h5>
				<ul class="list-unstyled text-small">
					<li><a class="text-muted" href="#">Team</a></li>
					<li><a class="text-muted" href="#">Tris HR Portal?</a></li>
					<li><a class="text-muted" href="#">Terms and Conditions</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>Support</h5>
				<ul class="list-unstyled text-small">
					<li><a class="text-muted" href="#">TRIS Contacts</a></li>
					<li><a class="text-muted" href="#">Department Contacts</a></li>
					<li><a class="text-muted" href="#">FAQ</a></li>
				</ul>
			</div>
		</div>
	</footer>
</body>
</html>
