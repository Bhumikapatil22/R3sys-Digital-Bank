<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./resources/style.css">
</head>
<body>
   <nav class="navbar" >
        <ul class="nav-menu">
            <li ><a style="position:relative;right:1150px;" href="#">R3sysDB</a></li>
            
        </ul>
    </nav>
   
  <h1 id="heading">Welcome to R3sys Digital Bank</h1> 
<div class="container" id="container">
	
	<div class="form-container sign-in-container">
		<form action="loginAdmin" method="post">
			<h1>Sign in</h1>
			
			
			<input type="email" name="aemail" placeholder="Email" />
			<input type="password" name="apassword" placeholder="Password" />
			<a href=""></a>
			<button>Sign In</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Revolutionizing Banking</h1>
				<p style="margin:7px;">We blend innovation with convenience to provide you with a seamless banking experience. Our state-of-the-art digital platform offers you the flexibility to manage your finances anytime, anywhere, with the highest levels of security and efficiency</p>
				
			</div>
		</div>
	</div>
</div>


<script src="./resources/app.js"></script>
</body>
</html>