<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/Easy.css"/>
        <title>Validating...</title>
    </head>
    <body>  
        <form class="modal-content" style="background-color: palegreen" action="VerifyServlet" method="post">
            <div class="container">
              <input type="text" name="otp" pattern="^\d{4}$" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('OTP is invalid!')" required>

              <center><button type="submit" value="Verify">Verify</button></center>
            </div>
        </form>
         <form action="resend-otp" method="post">
                <center><button type="submit" style="width: 15%; align-content: center;" value="Resend">Resend OTP</button></center>              
        </form>
         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" crossorigin="anonymous"></script>
        
    </body>
</html>