<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./resources/style.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
   
    <nav class="navbar">
        <ul class="nav-menu">
          <li ><a style="position:relative;right:1000px;" href="#">R3sysDB</a></li>
            <li><a href="login">Home</a></li>
            <li><a href="login">Logout</a></li>
        </ul>
    </nav>
    <!-- <h1 id="heading">Welcome to Digital Bank</h1> -->
<div class="container" id="container">
	
	<div class="form-container sign-in-container">
		<form class="board">
            <button><a href="add">Add Account</a><i style="position:relative; left:50px;" class="fas fa-user icon"></i></button>
            <button><a href="view">View all Users</a><i  style="position:relative; left:45px;" class="fas fa-users icon"></i></button>
            <button><a href="deposite">Deposit Amount</a><i  style="position:relative; left:40px; font-size:16px;" class="fa-solid fa-arrow-right"></i></button>
			<button><a href="withdraw">Withdraw Amount</a><i  style="position:relative; left:32px; font-size:16px;" class="fa-solid fa-arrow-left"></i></button>
			<button><a href="transfer">Transfer Money </a><i  style="position:relative; left:37px; font-size:15px;" class="fa-solid fa-arrow-right-arrow-left"></i></button>
			
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Dashboard</h1>
				<p >Our dashboard simplifies account management and financial transactions. Easily add accounts, view users, handle deposits, withdrawals, transfers, search accounts, and delete accounts with <br> intuitive tools for efficient and accurate management.</p>
				
			</div>
		</div>
	</div>
</div>


<script src="./resources/app.js"></script>
</body>
</html>