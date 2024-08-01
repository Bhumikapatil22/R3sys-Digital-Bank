<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
    <div class="container" id="container">
	<div class="form-container sign-up-container">
		
	</div>
	<div class="form-container sign-in-container">
		<form action="depositAmount" method="post">
		<h2>Deposit Amount</h2>
		<input type="text" name="ano" placeholder="Enter account number">
		<input type="text" name="amt" placeholder="Enter amount to deposite"><br>
		<button>Deposit</button>
		</form>
			</div>
	<div class="overlay-container">
		<div class="overlay">
			
			<div class="overlay-panel overlay-right">
				<h1>Efficient and Protected Deposits</h1>
				<p>Secure and Reliable Money Deposits</p>
				<button class="ghost" ><a style="color:white" href="dash">Go to Dashboard</a></button>
			</div>
		</div>
	</div>
</div>


<script src="./resources/app.js"></script>
</body>
</html>

