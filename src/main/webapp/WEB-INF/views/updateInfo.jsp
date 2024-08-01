<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./resources/style.css">
</head>
<body>
   
    <nav class="navbar">
        <ul class="nav-menu">
         <li ><a style="position:relative;right:1000px;" href="#">R3sysDB</a></li>
            <li><a href="login">Home</a></li>
            <li><a href="login">Logout</a></li>
        </ul>
    </nav>
<%
		int id=Integer.parseInt(request.getParameter("id"));
		String cname=request.getParameter("cname");
		String ccity=request.getParameter("ccity");
		String cmobile=request.getParameter("cmobile");
%>
<div class="container" id="container">
	<div class="form-container sign-up-container">
		
	</div>
	<div class="form-container sign-in-container">
			<form action="PassingId" method="post">
				<h2 id="head">Update Account</h2>		
				<input type="text" name="id" value=<%=id %> readonly>
				<input type="text" name="cname" value="<%=cname%>">
				<input type="text" name="ccity" value="<%=ccity%>">
				<input type="text" name="cmobile" value="<%=cmobile%>">
				<button id="signup">Update</button>
			</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			
			<div class="overlay-panel overlay-right">
				<h1>Welcome to Digital Bank</h1>
				<p></p>
				<button class="ghost" ><a style="color:white" href="dash">Go to Dashboard</a></button>
			</div>
		</div>
	</div>
	</div>
	
<script src="./resources/app.js"></script>
</body>
</html>
<!--  <a href="">Update Name</a>
<a href="">Update Mobile number</a>
<a href="">Update City</a>-->
