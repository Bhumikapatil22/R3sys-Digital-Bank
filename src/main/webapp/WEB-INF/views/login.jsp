<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8">
    <title>Apna Bank</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="./resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="./resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="./resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="./resources/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <!-- Customized Bootstrap Stylesheet -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="./resources/css/style.css" rel="stylesheet">
    
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->



    


   <!-- Contact Start -->
<div class="container-fluid overflow-hidden d-flex align-items-center justify-content-center" style="height: 100vh; margin: 0; ">
    <div class="container contact px-lg-0">
        <div class="row justify-content-center g-0 mx-lg-0">
            <div class="col-lg-6 contact-text py-5 wow fadeIn" data-wow-delay="0.5s">
                <div class="p-lg-5 ps-lg-0">
                    <div class="section-title text-center">
                        <h2 class="display-8 mb-4" style="color:#191A19">Admin Login</h2>
                    </div>
                   
                    <form action="loginAdmin" method="post">
                        
                        <div class="col-12">
                            <div class="form-floating">
                                <input type="text" class="form-control" name="aemail" style="background-color:#edfac6; border:none"><br>
                                <label for="uemail" style="color:#1E5128">Your Email</label>
                            </div>
                        </div>
                            <div class="col-12" >
                                <div class="form-floating">
                                    <input type="password" class="form-control" name="apassword" style="background-color:#edfac6; border:none"><br>
                                    <label for="upassword" style="color:#1E5128">Password</label>
                                </div>
                            </div>
                          
                            <div class="col-12">
                                <button class="btn w-100 py-3" type="submit" style="background-color:#4E9F3D; border:#4E9F3D; color:white">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Contact End -->



             


  

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>




