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
        <title>Change Password</title>
    </head>
    <body>  
        <form class="modal-content" action="ResetPasswordServlet" method="post">
            <div class="container">
              <label for="newPassword"><b>New Password</b></label>
              <input type="password" placeholder="Enter new password" name="newPassword" pattern=".{8,}" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Password should be at least 8 characters long!')" required>

              <center><button style="width: 25%; align-content: center" type="submit" value="ResetPassword">Reset Password</button></center>
            </div>
        </form>
    </body>
</html>