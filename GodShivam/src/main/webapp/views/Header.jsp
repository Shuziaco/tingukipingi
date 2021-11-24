<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<title>Header goes here...</title>
<style>
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
        
       /*  #page-wrapper{
            min-height: 100%;
        } */
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
<!-- 	 <div id="page-wrapper"> -->
    <nav class="navbar navbar-expand-sm navbar-light justify-content-end sticky-top" style="background-color: #e3f2fd;">
    <div class="container-fluid">
    <!--<a class="navbar-brand" href="HomepageRectified.jsp">-->
      <!--<img src="fonts/myLogo.png" alt="" width="70" height="50" class="d-inline-block align-text-top">-->
    <!--</a>-->
    <div class="collapse navbar-collapse flex-grow-0" id="navbarSupportedContent">
        <ul id="ribbon" class="navbar-nav text-left">
            <li id="firstelement" class="nav-item" style="margin-left: 50px;">
              <a class="nav-link" aria-current="page" href="Signin">Sign In</a>
            </li>
        </ul>
     </div>
     <div class="collapse navbar-collapse flex-grow-0" id="navbarSupportedContent">
         <ul id="ribbon" class="navbar-nav text-right">
          <li class="nav-item">
            <div class="pt-2">
                <a href="Signin" id="postp" class="btn btn-lg btn-outline-secondary"  aria-disabled="true">Post Property</a>
            </div>
          </li>
            <li class="nav-item">
               <a class="nav-link" aria-current="page" href="blog">Blog</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="Signin">Contact</a>
            </li>
      </ul>
     </div>
    <!--</div>-->
  </div>
  </nav>
  <!-- </div> -->
</body>
</html>