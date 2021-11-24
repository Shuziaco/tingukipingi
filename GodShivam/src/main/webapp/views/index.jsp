<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
        <title>New Home Page</title>
        <style>
            .webName{
                /*padding: 20px;*/
                /*margin-bottom: 350px;;*/
                /*font-size: 100pt;*/
                margin: 90px;
                font-size: 70px;
                /*top: 20%;*/
            }
            .multicolortext{
                background-image: linear-gradient(to left, violet, indigo, green, blue, yellow, orange, red);
                -webkit-background-clip: text;
                -moz-background-clip: text;
                background-clip: text;
                color: transparent;
            }
               body {
        height: 100vh;
        width: 100vw;
        /* background: url('http://s8.favim.com/orig/150322/art-artsy-arty-background-Favim.com-2584108.jpg'); */
        background-size: cover;
        font-family: sans-serif;
        }

        .subDiv{
            font-size: 20px;
            margin-left: 20px;
            /*border: dashed 3px black;*/
            border-left: solid 1px #c0c0c0;
            color: #757575;
            padding: 5px;
            top: 0;
            width: fit-content;
            height: 50px;
            display: inline-block;
        }
        
        .nav-link{
            font-size: 30px;
            font-weight: bold;
        }
        
        .page-wrapper{
            min-height: 100%;
        }
        html,body{
            height: 100%;
            width: 100%;
        }
        .navbar-nav li{
            margin-left : 1em;
            margin-right : 1em;
        }
        #firstelement{
            margin-left : 10em;
            margin-right : 10em;
        }
        @media (min-width: 992px){
        .navbar-nav li {
            margin-left : 1em;
            margin-right : 1em;
        }
         #firstelement{
            margin-left : 1em;
            margin-right : 1em;
        }
      }
        </style>
    </head>
    <body>
      <div class="page-wrapper">
       <jsp:include page="Header.jsp"/>
        <div class="webName"><img src="fonts/myLogo.png" alt="" class="d-inline-block align-text-top">
            <span class="multicolortext">GodShivam</span>
            <!--<div class="subDiv">-->
            <span class="subDiv"><b>Post your property on many websites on a single platform.</b><br><sub>India's only platform that provides multiple listing facility.</sub></span>
            <!--</div>-->
        </div>
        <form action="Signin" method="get">
         <center><button type="submit" class="btn btn-lg pt-3 pb-3 btn-secondary">Post Property</button></center>
        </form>
      </div>
        <jsp:include page="Footer.jsp"/>
   
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script>
        $('#postp').click(function(){ 	
            alert('Please login first.')
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