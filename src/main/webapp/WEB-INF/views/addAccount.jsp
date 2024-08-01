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
<div class="container" id="container">
	<div class="form-container sign-up-container">
		
	</div>
	<div class="form-container sign-in-container">
		<form action="addAccount" method="post">
			<h2 id="head">Create Account</h2>
			<input type="text" name="custNo" placeholder="Enter user's account no.">
			<input type="text" name="custName" placeholder="Enter user's name">
			<input type="text" name="custMob" placeholder="Enter user's mobile">
			<input type="text" name="custCity" placeholder="Enter user's city">
			<input type="text" name="custBalance" placeholder="Enter account opening balance">
			<button id="signup">Sign Up</button>
		</form>
		
	</div>
	<div class="overlay-container">
		<div class="overlay">
			
			<div class="overlay-panel overlay-right">
				<h1>Admin Account Setup</h1>
				<p>Easily manage new user onboarding with our intuitive admin interface.<br> Designed for efficiency and security, it allows administrators to quickly and accurately set up accounts, ensuring seamless access to all banking services.</p>
				<button class="ghost"  style="margin-top:25px;"><a style="color:white;" href="dash">Go to Dashboard</a></button>
			</div>
		</div>
	</div>
</div>


<script src="./resources/app.js"></script>
</body>
</html>