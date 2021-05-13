<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>

    <!doctype html>
    <html lang="en">
      <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Jekyll v3.8.6">
        <title>Register</title>
    
        
    
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
       
        <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/4.4/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/4.4/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/4.4/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/4.4/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/4.4/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
    <link rel="icon" href="/docs/4.4/assets/img/favicons/favicon.ico">
    <meta name="msapplication-config" content="/docs/4.4/assets/img/favicons/browserconfig.xml">
    <meta name="theme-color" content="#563d7c">
    
    
        <style>
          .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
          }
    
          @media (min-width: 768px) {
            .bd-placeholder-img-lg {
              font-size: 3.5rem;
            }
          }
          html,
body {
  height: 100%;
}

body {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 15px;
  margin: auto;
}
.form-signin .checkbox {
  font-weight: 400;
}
.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
        </style>
        
        
      </head>
      <body class="text-center">
     	
        <form class="form-signin" action="Register" method="post">
      <img class="mb-4" src="assets/logo.png"  alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Register</h1>
      
      
      <input type="email" name="email" id="inputEmail" class="form-control mb-2" placeholder="Email address" required autofocus>
      
      <input type="tel" name="tp" id="inputEmail" class="form-control mb-2" placeholder="Telephone number" required autofocus>
      
      
      <input type="text" id="fname" class="form-control mb-2" name="fname" placeholder="First Name" required autofocus>
      
      
      <input type="text" id="lname" class="form-control mb-2" name="lname" placeholder="Last Name" required autofocus>
      
      
      <input type="password" id="inputPassword" name="pass" class="form-control mb-2" placeholder="Password" required autofocus>
      
      <input type="password" id="inputPassword2" name="passa" class="form-control mb-2	" placeholder="Retype Password" required autofocus>
      
      <p style="text-align:center;font-size:15px;color:red">
							<%
								if(request.getParameter("err")!=null){
									out.print("Registration failed");
								}
							%>
						</p>
      
      <button class="btn btn-lg btn-primary btn-block" type="submit">Register</button>
      <a href="login.jsp" class="text-decoration-none "><button class="mt-1 btn btn-lg btn-secondary btn-block" type="button">Login</button></a>
      <a href="index.jsp"><h6 class="mt-2">Go Back Home</h6></a>
      <p class="mt-5 mb-3 text-muted">&copy; 2021</p>
    </form>
    </body>
    </html>
    