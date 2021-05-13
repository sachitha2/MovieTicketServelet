<%@ page import = "java.io.*,java.util.*" %>
<%

String email=(String)session.getAttribute("email");
//session.setAttribute("user", null);
%>
<nav class="navbar navbar-expand-lg navbar-light " style="background-color: #234661;">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp"><img src="assets/logo.png" alt="" height="40">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ">
                    <li class="nav-item ">
                        <a class="nav-link active btn btn-outline" href="index.jsp" tabindex="-1">Home</a>
                    </li>
                    
                </ul>
                <ul class="navbar-nav ms-auto">
                    
                    <% 
                     if(email == null){
                    	 %>
                    	 	<li class="nav-item ">
		                        <a class="nav-link btn btn-outline" href="login.jsp" tabindex="-1">Login</a>
		                    </li>
		                    <li class="nav-item ">
		                        <a class="nav-link btn btn-outline" href="register.jsp" tabindex="-1">Register</a>
		                    </li>
                    	 <%
                     }else{
                    	 %>
                    	 <li class="nav-item ">
                            <a class="nav-link btn btn-outline" href="Logout" tabindex="-1">Logout</a>
                        </li> 
                    
	                    <li class="nav-item ">
	                        <a class="nav-link btn btn-outline" href="profile.jsp" tabindex="-1"><img
	                                src="assets/profile.png" alt="" width="30"></a>
	                    </li>
                    	 <%
                     }
                    %>
                    
                    
                   
                        
                    <!-- -->
                </ul>
            </div>
        </div>
    </nav>