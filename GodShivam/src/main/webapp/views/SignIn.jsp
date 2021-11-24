<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <title>Login/Signup here</title>
        <style>          
               body {
        height: 100vh;
        /*width: 100vw;*/
        /* background: url('http://s8.favim.com/orig/150322/art-artsy-arty-background-Favim.com-2584108.jpg'); */
        background-size: cover;
        font-family: sans-serif;
        }

        .container { 
        width: 600px;
        height: 500px;
        position: relative;
        perspective: 800px;
        margin: 3rem auto;
        }

        #options {
            margin: 0px auto;
        margin-top: -20px;
            width: 200px;
            text-align: center;
        }

        #card {
        width: 100%;
        height: 100%;
        position: absolute;
        transform-style: preserve-3d;
        transition: transform 1s;
        }

        #card figure {
        margin: 0;
        position: absolute;
        border-radius: 8px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: space-between;
        width: 100%;
        height: 100%;
        box-shadow: 0px 1px 3px rgba(0,0,0,.3);
        backface-visibility: hidden;
        }

        .logo {
        position: absolute;
        top: 1rem;
        left: 1rem;
        height: 50px;
        width: 50px;
        }

        .back-logo {
        position: absolute;
        top: 1rem;
        right: 1rem;
        height: 50px;
        width: 50px;
        transform: rotateY(180deg);
        }

        .logo img, .back-logo img {
        height: 50px;
        }

        #card .front {
        background: white;
        }
        #card .back {
        background: white;
        transform: rotateY( 180deg );
        }

        #card.flipped {
        transform: rotateY( 180deg );
        }

        @keyframes powerFlip {
        from {
            box-shadow: 5px 10px 5px rgba(0,0,0,0);
        }
        
        50% {
            transform: translateY(-10px);
            box-shadow: 0px 4px 20px 20px rgba(142, 68, 173,0.1);
        }
        }

        @keyframes powerFlipTwo {
        from {
            box-shadow: 5px 10px 5px rgba(0,0,0,0);
        }
        
        50% {
            transform: translateY(-10px);
            box-shadow: 0px 4px 20px 20px rgba(142, 68, 173,0.1);
        }
        }


        #flip {
        animation-name: powerFlipTwo;
        animation-timing-function: easeIn;
        animation-duration: .5s;
        animation-fill-mode: both;
        animation-iteration: 1;
        height: 30px;
        width: 200px;
        background: #9b59b6;
        border: none;
        font-size: 1rem;
        color: white;
        transition: all 150ms;
        cursor: pointer;
        }

        #flip:hover {
        background: #8e44ad;
        }

        #flip.powered {
        animation-name: powerFlip;
        animation-timing-function: easeIn;
        animation-duration: .5s;
        animation-fill-mode: both;
        animation-iteration: 1;
        }

        form {
        display: flex;
        flex-direction: column;
        }

        form input {
        margin-bottom: 1rem;
        }

        .front .form-side {
        padding-top: 50px;
        padding-left: 1rem;
        width: 40%;
        height: 100%;
        }

        .back .form-side {
        padding-top: 50px;
        padding-right: 1rem;
        width: 40%;
        height: 100%;
        }


        .front .photo-side {
        width: 50%;
        height: 100%;
        background: url('https://image.freepik.com/free-vector/startup-background-with-rocket_1302-791.jpg');
        /*background-color: rgba(52, 152, 219,1.0);*/
        /* background: url('images/lapsign.jpg'); */
        background-size: cover;
        background-position: right;
        border-top-right-radius: 6px;
        border-bottom-right-radius: 6px;
        }

        .back .photo-side {
        width: 50%;
        height: 100%;
        background: url('https://image.freepik.com/free-vector/startup-background-with-rocket-laptop_1302-813.jpg');
        /* background: url('images/Login.jpg'); */
        background-size: cover;
        /*background-color: rgba(52, 152, 219,1.0);*/
        background-position: left;
        border-top-left-radius: 6px;
        border-bottom-left-radius: 6px;

        }
        .txt{
        text-align: center;
        font: bold 60px cursive;
        color: white;
        /*margin-top: 40%;*/
        position: absolute;
        top: 50%;
        left: 50%;
        margin: -50px 0 0 75px;
        }

        label {
        font-size: 90%;
        margin-bottom: 5px;
        }

        form input {
        height: 20px;
        padding-left: 3px;
        }

        .lgn-btn {
        background: rgba(52, 152, 219,1.0);
        color: white;
        border: none;
        height: 30px;
        cursor: pointer;
        }

        .terms a {
        color: rgba(41, 128, 185,1.0);
        text-decoration: none;
        }

        .github {
        position: absolute;
        top: 10px;
        left: 10px;
        background: rgba(155, 89, 182,1.0);
        padding: 9px 20px 9px 20px;
        color: white;
        text-decoration: none;
        font-family: sans-serif;
        border-radius: 20px;
        cursor: pointer;
        z-index: -1;
        font-size: 10px;
        }
        .close{
        /*float: right;*/
        /*position: absolute;*/
/*       top: 0.5rem;
       left: 0.5rem;
       height: 20px;
       width: 20px;*/
        }
        .close:hover{
        /*color: white;*/
        /*background: rgba(173, 12, 0, 0.747);*/
              /*border-color: white;*/  
        }
        
        .nav-link{
            font-size: 30px;
            font-weight: bold;
        }
        
        .front .btn-close{
            float: right;
            margin: 4px;
            position: relative;
        }
        
        .back .btn-close{
            margin: 4px;
            /*position: absolute;*/
        }
        </style>
    </head>
    <body>
         <section class="container hide">
        <!--<div style="height: 21px;width: 600px "><button type='button' class='close'>×</button></div>-->        
        <div id="card">
          <figure class="front">
              <div class="logo"><img src="Images/myLogo.png" />
            </div>
            <div class="form-side">
                <br>
              <h1>Login</h1>
              <div class="form">
                  <form action="logging" method="post">
                        <label>Email</label>
                        <input placeholder="Email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Please enter valid email address')" required>
                        <label>Password</label>
                        <input type="password" placeholder="Password"  name="password" required>
                        <button class="lgn-btn">Login</button>
                        <a href="reset-password">Forgot your password?</a>
                         <p class="terms">By logging in you agree to our <a href="#">terms</a> and <a href="#">conditions</a></p>
                   </form> 
              </div>
            </div>
            <div class="photo-side">
                <!--<span class="txt">Login</span>-->
                <!--<button  type='button' class='close'>×</button>-->
                <!--<button type="button" class="btn-close" aria-label="Close"></button>-->
            </div>
      
          </figure>
          
          <figure class="back">
            <div class="back-logo"><img src="Images/myLogo.png" /></div>
            <div class="photo-side">
                <!--<span class="txt">Sign up</span>-->
               <!--<button  type='button' class='close'>×</button>-->
               <!--<button type="button" class="btn-close" aria-label="Close"></button>-->
            </div>
      
            <div class="form-side">
              <h1>Sign up</h1>
               <div class="form">
                    <form  action="register" method="post">
                    <label>Username</label>
                    <input placeholder="Username" name="name" pattern="^[A-Za-z -]+$" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Only characters are allowed!')" required>
                    <label>Email</label>
                    <input type="email" placeholder="Email" name="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Please enter valid email address')" required>
                    <label>Mobile No.</label>
                    <input type="text" placeholder="Mobile No."  name="mobileNo" pattern="^\d{10}$" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Please enter valid Mobile no.')" required>
                    <label>Password</label>
                    <input type="password" placeholder="password" name="password" pattern=".{8,}" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Password should be at least 8 characters long')" required>
                    <button class="lgn-btn">Sign up</button>
                    <p class="terms">By signing up you agree to our <a href="#">terms</a> and <a href="#">conditions</a></p>
                </form>  
              </div>
            </div>
            
          </figure>
        </div>
      </section>
      
      <section id="options" class="hide">
          <p id="message">Need to sign up?
          <p><button id="flip" class="powered">Create an account</button></p>
      </section>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script>
          $('.btn-close').click(function(){
              $('.hide').attr('hidden',true);
          });
          $('#flip').on('click', function(e) {
            e.preventDefault();
            
        
            $('#card').toggleClass('flipped');
        
        $('#flip').toggleClass('powered');
        
        if ($('#card').hasClass('flipped')) {
            $('#message').text("Already have an account?");
            $('#flip').text("Log in");
        } else {
            $('#message').text("Need to sign up?");
            $('#flip').text("Create an account");
        }

        });
      </script>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
            response.setHeader("Pragma", "no-cache"); // HTTP 1.0
           response.setDateHeader("Expires", 0); // Proxies.
            session = request.getSession();
           if(session != null)
           {
               String msg = (String)session.getAttribute("message");
               if(msg != null)
               {
                    out.println("<script type= \"text/javascript\">");
                    out.println("alert('"+msg+"');");
                    out.println("</script>");
                    session.removeAttribute("message");
               } 
               else
               {
               }
           }
          
        %>
    </body>
</html>