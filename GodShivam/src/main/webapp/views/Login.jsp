<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawe/some.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">  
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.structure.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.theme.min.css">
        <title>Thanks for visiting us...</title>
        <style>
        .search {
           width: 100%;
           position: relative;
           display: flex;
         }

         .searchTerm {
           width: 100%;
           border: 3px solid #00B4CC;
           border-right: none;
           padding: 5px;
           height: 40px;
           border-radius: 5px 0 0 5px;
           outline: none;
           color: #9DBFAF;
         }

         .searchTerm:focus{
           color: #00B4CC;
         }

         .searchButton {
           width: 50px;
           height: 40px;
           border: 1px solid #00B4CC;
           background: #00B4CC;
           text-align: center;
           color: #fff;
           border-radius: 0 5px 5px 0;
           cursor: pointer;
           font-size: 20px;
         }

         /*Resize the wrap to see the search bar change!*/
         .wrap{
           width: 50%;
           position: absolute;
           top: 50%;
           left: 50%;
           transform: translate(-50%, -50%);
         }
         .buttons-space{
         width: 100%;
         text-align: center;
       }
       .buttons{
         position: absolute;
         top: 65%;
         left: 43%;
       }
        #property{
         display: none;
     }
     select{
          /*-webkit-appearance: none;*/
     }  
     .prop{
         background: #e91e63;
         color: white;
         font-size: 30pt;
         font-family: fantasy;
         text-align: center;
         border-width: 8px;             
         /*size: A4;*/
     }
     #post-btn{
         display: none;
         margin-top: 30%;
         margin-left: 43%;
         background: #660000;
         width: fit-content;
     }
     .hide{
            /*display: none;*/
     }
     #tabs{
             width: 90%;
             margin-top: 5%;
             margin-left: 5%;
             margin-bottom: 5%;
             margin-right: 5%;
             /*left: 14%;*/
             /*height: 500px;*/
             /*background-color: whitesmoke;*/
             /*padding: 100px;*/
             border: solid 1px #00bcd4;
             z-index: 4000;   
             align-content: center;
             /*border: none;*/
             /*z-index: 100;*/
             /*color: #FFC312;*/
         }
         #tabs ul{
             /*background-color: #FFC312;*/
             /*border: solid 3px #FFC312;*/
             border: none;
         }
         #tabs ul li{
             border: none;
             /*border: solid 3px #FFC312;*/
         }
        .dropdown-input {
         position: relative;
     }

     .dropdown-input:before {
         content: "";
         position: absolute;
         right: 10px;
         top: 8px;
         width: 0; 
         height: 0; 
         border-left: 10px solid transparent;
         border-right: 10px solid transparent;
         border-top: 10px solid #f00;
     }

     .dropdown-input:after {
         content: "";
         position: absolute;
         right: 10px;
         top: 16px;
         width: 0; 
         height: 0; 
         border-left: 5px solid transparent;
         border-right: 5px solid transparent;
         border-top: 5px solid #333;
     }
       .close {
         position: absolute;
         right: 22px;
         top: 7px;
         width: 32px;
         height: 32px;
         opacity: 0.3;
       }
       .close:hover {
         opacity: 1;
       }
       .close:before, .close:after {
         position: absolute;
         left: 15px;
         content: ' ';
         height: 33px;
         width: 2px;
         background-color: #333;
       }
       .close:before {
         transform: rotate(45deg);
       }
       .close:after {
         transform: rotate(-45deg);
       }
       .login_btn{
         /*color: black;
         background-color: #FFC312;*/
         border-radius: 5px;
         color: white; 
         /*background-color: #FFC312;*/
         background-color: #9DBFAF;
         width: 100px;
         border: none;
         }
         .login_btn:hover{
         color: black;
         /*background-color: white;*/
         }
         .input-label{
             width: 20%;
             /*border: 3px solid #00B4CC;*/
             border: 1px solid #ccc;
             border-left: none;
             padding: 5px;
             height: 38px;
             /*border-radius: 5px 0 0 5px;*/
             outline: none;
             background: white;
             /*color: #999;*/
         }

         .form-label{
             color: black;
             /*border: 1px solid black;*/
             /*background-color: #FFC312;*/
             /*border: none;*/
             /*height: 35px;*/
             /*padding-left: 5px;*/
             /*padding-right:  5px;*/
         }
         html,body{
             height: 100%;
             width: 100%;
             /*padding: 100px;*/
         }
         #page-wrapper{
             min-height: 100%;
         }
         
         /*Radio Buttons */
          .radio-toolbar {
/*         margin: 2px; */
         /*   margin: auto; */
         /*   text-align: center; */
        }

        .radio-toolbar input[type="radio"] {
        opacity: 0;
        position: fixed;
        width: 0;
        }

        .radio-toolbar label {
            display: inline-block;
            padding: 5px 20px;
            font-family: sans-serif, Arial;
            font-size: 14px;
            /* border: 2px solid dodgerblue; */
            border: 2px solid #708090;
           /*  border-radius: 50px; */
             margin-left: 25px;
        }

        .radio-toolbar label:hover {
        /* background-color: cornflowerblue; */
        background-color: #708090;
        color: white;
        }

        .radio-toolbar input[type="radio"]:focus + label {
            border: 2px solid white;
        }

        .radio-toolbar input[type="radio"]:checked + label {
          /*  background-color: dodgerblue;*/
            background-color: #708090;
            border-color: white;
            color: white;   
        }
       
        </style>
    </head>
    <body>
      <div class="collapse navbar-collapse flex-grow-0" id="navbarSupportedContent">
        <ul id="ribbon" class="navbar-nav text-left">
            <li id="firstelement" class="nav-item" style="margin-left: 50px;">
              <a class="nav-link" aria-current="page" href="Signin">Sign In</a>
            </li>
        </ul>
     </div>
   <div id="page-wrapper">     
    <nav class="navbar navbar-expand-lg navbar-light sticky-top" style="background-color: #e3f2fd;">
      <div class="collapse navbar-collapse flex-grow-0" id="navbarSupportedContent">
        <ul id="ribbon" class="navbar-nav text-left" style="font-size: 20pt;color: black;font-weight: bold;margin-left: 50px;">
             <li id="firstelement" class="nav-item" >
              <a class="nav-link" aria-current="page" href="/"><img src="Images/myLogo.png" height="60" width="60" style="margin-top: 15%; align: left;" align="left"/></a>
            </li><h1 style="font-size: 45pt; margin-top: 5%;" >GS</h1>
        </ul>
     </div>
    <div class="container-fluid">
      <ul id="ribbon" class="navbar-nav ml-auto mt-2 mt-lg-0" style="font-size: 20pt;color: #333;">
            <li class="nav-item">
               <a class="nav-link" aria-current="page" href="blog">Blog</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="Signin">Contact</a>
            </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false" href="#"> <i class="fas fa-user"></i>${sessionScope.user.substring(0, sessionScope.user.indexOf("@"))}</a>
          <ul class="dropdown-menu" >
             <li><a class="dropdown-item" href="profile">Profile</a></li>
             <li><a class="dropdown-item" href="logging-out">Logout</a></li>
          </ul>
        </li>
      </ul>
    <!--</div>-->
    </div>
    </nav>    
        
       <div id="tabs">
        <ul>
            <li><a href="#tabs-1">Sell</a></li>
            <li><a href="#tabs-2">Rent</a></li>
            <!--<a href="javascript:void(0);" onclick="closeTab();" class="close"></a>-->
        </ul>
        <!--<button id="show">Post Property</button>-->
            <div id="tabs-1" title="Post Property" style="height: fit-content;">
            <form action="post/sell" onsubmit="replaceComma()" method="post" enctype="multipart/form-data">
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div>
                    <lable class="input-group-text form-label">Name</lable>
                    <!--<label class="input-label">Name</label>-->
                    <input type="text" class="form-control" placeholder="Your Name" name="name" pattern="^[A-Za-z -]+$" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Only characters are allowed!')" required>
                </div>    
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-id-card"></i></span>
                    </div>
                     <lable class="input-group-text form-label">Address</lable>
                    <input type="text" class="form-control" placeholder="Your Address" name="address" required>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-city"></i></span>
                    </div>
                     <lable class="input-group-text form-label">City</lable>
                    <input type="text" class="form-control" placeholder="Your City" name="city" pattern="^[a-zA-Z.\- ]+$" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Numbers and Special characters are not allowed in City Name')" required>
                </div>
                  <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-minus-square"></i></span>
                    </div>
                     <lable class="input-group-text form-label">Property Type</lable>&emsp; &emsp; &emsp; &emsp;
                   <!--   <input type="radio" name="propertyType" id="resident" value="Residential">&emsp;Residential&emsp; &emsp; &emsp; &emsp;
                     <input type="radio" name="propertyType" id="commercial" value="Commercial">&emsp;Commercial -->
                     
                    <div class="radio-toolbar">
				        <input type="radio" id="radioResidential" name="propertyType" value="Residential" checked>
				        <label for="radioResidential">Residential</label>
				    
				        <input type="radio" id="radioCommercial" name="propertyType" value="Commercial">
				        <label for="radioCommercial">Commercial</label>
				    </div>
                </div>
                   <div class="input-group form-group" id="propTypes">
<!--                     <div class="input-group-prepend"> -->
<!--                         <span class="input-group-text"><i class="fas fa-minus-square"></i></span> -->
<!--                     </div> -->
<!--                      <label class="input-group-text form-label">Property Category</label> -->
                      <div class="radio-toolbar"  style="margin-left: 200px;">
				        <input type="radio" id="radioHouse" name="propertyCategory" value="House" checked>
				        <label for="radioHouse">House</label>
				    
				        <input type="radio" id="radioFlat" name="propertyCategory" value="Flat/Apartment">
				        <label for="radioFlat">Flat/Apartment</label>
				        <input type="radio" id="radioVilla" name="propertyCategory" value="Villa">
				        <label for="radioVilla">Villa</label>
				    </div>
                    <!--  <select class="form-control" name="residetialCategory">
                        <option selected="true" disabled="disabled">Residential</option>
                        <option value="Flat/Apartment">Flat/Apartment</option>
                        <option value="Residential House">Residential House</option>
                        <option value="Villa">Villa</option>
                    </select> -->
                </div>
                <div class="input-group form-group" id="propCommercial" hidden="true">
                 <!--    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-minus-square"></i></span>
                    </div>
                     <lable class="input-group-text form-label">Property Category</lable> -->
                      <div class="radio-toolbar" style="margin-left: 150px;">				    
				        <input type="radio" id="radioOffice" name="propertyCategory" value="Office Space" checked>
				        <label for="radioOffice">Office Space</label>
				        <input type="radio" id="radioShowroom" name="propertyCategory" value="Showroom">
				        <label for="radioShowroom">Showroom</label>
	        	        <input type="radio" id="radioShop" name="propertyCategory" value="Shop">
				        <label for="radioShop">Shop</label>
	        	        <input type="radio" id="radioGodown" name="propertyCategory" value="Warehouse/Godown">
				        <label for="radioGodown">Warehouse/Godown</label>
				    </div>
                     <!-- <select class="form-control" name="commercialCategory">
                        <option selected="true" disabled="disabled">Commercial</option>
                        <option value="Office Space">Office Space</option>
                        <option value="Showroom">Showroom</option>
                        <option value="Shop">Shop</option>
                        <option value="Warehouse/Godown">Warehouse/Godown</option>
                    </select> -->
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-minus-square"></i></span>
                    </div>
                     <lable class="input-group-text form-label">Property Status</lable>
                    <select class="form-control" name="propertyStatus">
                        <option selected="true" disabled="disabled">Property Status</option>
                        <option value="Ready to Move">Ready to Move</option>
                        <option value="Under Construction">Under Construction</option>
                    </select>
                     <!--<i class="bi bi-caret-up-fill"></i>-->
                </div>
               <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-money-bill-wave"></i></span>
                    </div>
                    <lable class="input-group-text form-label">Floor</lable>
                     <input type="text" class="form-control" maxlength="2" placeholder="Floor no." name="floor" pattern="^\d{0,2}$" required>
                </div>
                 <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-money-bill-wave"></i></span>
                    </div>
                    <lable class="input-group-text form-label">Total Floors</lable>
                     <input type="text" class="form-control" maxlength="2" placeholder="No. of Total Floors" name="totalFloors" pattern="^\d{0,2}$" required>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-money-bill-wave"></i></span>
                    </div>
                    <lable class="input-group-text form-label">Price</lable>
                     <input type="text" class="form-control" id="number" placeholder="Price" name="price" pattern="^\d{1,3}(,\d{3})*(\.\d+)?$" required>
                    <label class="input-group form-label" id="words"></label>
                </div>
                <div class="input-group form-group" style="border: 1px solid #ccc;border-radius: 5px;border-left: none;">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-chart-area"></i></span>
                    </div>
                     <lable class="input-group-text form-label">Area Units</lable>
                    <input type="text" class="form-control"  style="border: none;" placeholder="Area in Units" name="area" pattern="^\d+$" required>
                    <select name="areaUnit" class="form-control" style="border: none;float: right;">
                        <option>Sq.ft</option>
                        <option>Sq.mt</option>
                    </select>
                    
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-building"></i></span>
                    </div>
                     <lable class="input-group-text form-label">BHK</lable>
                    <input type="text" class="form-control" placeholder="BHK" name="bhk" pattern="^\d{1,2}$" required>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-address-book"></i></span>
                    </div>
                     <lable class="input-group-text form-label">Contact</lable>
                    <input type="tel" class="form-control" placeholder="Contact" name="contact" pattern="^\d{10}$" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Please enter valid Mobile no.')" required>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-images"></i></span>
                    </div>
                     <lable class="input-group-text form-label">Pictures</lable>
                    <input type="file" class="form-control"placeholder="Pictures" name="flPhoto" value="" autocomplete="off" multiple>
                </div>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-couch"></i></span>
                    </div>
                     <lable class="input-group-text form-label">Furnished Type</lable>
                    <select class="form-control" name="furnishType">
                        <option selected="true" disabled="disabled">Furnished Type</option>
                        <option value="Non Furnished">Non-Furnished</option>
                        <option value="Semi Furnished">Semi-Furnished</option>
                        <option value="Fully Furnished">Fully-Furnished</option>
                    </select>
                </div>
                <center><button class="login_btn" style="width: 20%; height: 40px;" type="submit" value="registerButton">Post Property</button></center>
            </form>
        </div>
        <div id="tabs-2" class="hide" style="height: fit-content" >
        <form action="post/rent" method="post" enctype="multipart/form-data">
            <div class="input-group form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                </div>
                 <lable class="input-group-text form-label">Name</lable>
                <input type="text" class="form-control" placeholder="Your Name" name="name" pattern="^[A-Za-z -]+$" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Only characters are allowed!')" required>
            </div>    
            <div class="input-group form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-id-card"></i></span>
                </div>
                 <lable class="input-group-text form-label">Address</lable>
                <input type="text" class="form-control" placeholder="Your Address" name="address" required>
            </div>
            <div class="input-group form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-city"></i></span>
                </div>
                 <lable class="input-group-text form-label">City</lable>
                <input type="text" class="form-control" placeholder="Your City" name="city" pattern="^[a-zA-Z.\- ]+$" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Numbers and Special characters are not allowed in City Name')" required>
            </div>
            <div class="input-group form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-minus-square"></i></span>
                </div>
                <lable class="input-group-text form-label">Building Type</lable>
                <select name="buildingType" class="form-control">
                    <option selected="true" disabled="disabled">Building Type</option>
                    <option value="Apartment">Apartment</option>
                    <option value="Independent House">Independent House</option>
                    <option value="Gated Community Villa">Gated Community Villa</option>
                </select>
            </div>
            <div class="input-group form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-parking"></i></span>
                </div>
                 <lable class="input-group-text form-label">Parking</lable>
                <select name="parking" class="form-control">
                    <option selected="true" disabled="disabled">Parking Available</option>
                    <option value="true">Yes</option>
                    <option value="false">No</option>
                </select>
            </div>
            <div class="input-group form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-money-bill-wave"></i></span>
                </div>
                 <lable class="input-group-text form-label">Rent</lable>
                <input type="text" id="number1" class="form-control" onsubmit="removeComma()" placeholder="Rent" name="rent" pattern="^\d+$" required>
                 <label class="input-group form-label" id="words1"></label>
            </div>
            <div class="input-group form-group" >
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-chart-area"></i></span>
                </div>
                 <lable class="input-group-text form-label">Floor</lable>
                <input type="text" class="form-control" placeholder="Floor (0 for Ground floor)" name="floor" pattern="^\d+$" required>
            </div>
            <div class="input-group form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="far fa-building"></i></span>
                </div>
                 <lable class="input-group-text form-label">Total Floors</lable>
                <input type="text" class="form-control" placeholder="Total Floors" name="totalFloor" pattern="^\d{1,2}$" required>
            </div>
            <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-building"></i></span>
                    </div>
                 <lable class="input-group-text form-label">BHK</lable>
                    <input type="number" class="form-control" placeholder="BHK" name="bhk" pattern="^\d{1,2}$" min="1" max="5" required>
            </div>
            <div class="input-group form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-address-book"></i></span>
                </div>
                 <lable class="input-group-text form-label">Contact</lable>
                <input type="tel" class="form-control" placeholder="Your Contact" name="contact" pattern="^\d{10}$" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Please enter valid Mobile no.')" required>
            </div>
            <div class="input-group form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-images"></i></span>
                </div>
                 <lable class="input-group-text form-label">Pictures</lable>
                <input type="file" class="form-control" placeholder="Pictures" name="flPhoto" value="" autocomplete="off" multiple>
            </div>
            <div class="input-group form-group">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="fas fa-couch"></i></span>
                </div>
                 <lable class="input-group-text form-label">Furnish Type</lable>
                <select name="furnishType" class="form-control">
                    <option selected="true" disabled="disabled">Furnish Type</option>
                    <option value="Non Furnished">Non-Furnished</option>
                    <option value="Semi Furnished">Semi-Furnished</option>
                    <option value="Fully Furnished">Fully-Furnished</option>
                </select>
            </div>
            <center><button class="login_btn" style="width: 20%; height: 40px;" type="submit" value="registerButton">Post Property</button></center>
        </form>
    </div>
       </div>
   </div>       
    <jsp:include page="Footer.jsp"/>      
          
           <%
          if(session.getAttribute("user")==null)
          {
              response.sendRedirect("/");
          }
          else
          {
              String uname = (String)session.getAttribute("user");
              String shortName = uname.substring(0, uname.indexOf("@"));
             %>
        <!--<h1>Hi <%=(String)session.getAttribute("user")%>! Welcome to Easy Go</h1>-->
        <% 
          }

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
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
    <script>
            function validate()
            {
                document.body.style.backgroundColor="white";
                var show = <%= session.getAttribute("user")==null%>

                if(show)
                {
                    document.getElementById('id01').style.display='block';
                }
                else
                {
                    document.getElementById('id03').style.display='block';
                }
            }
            function pick()
            {
//                $('#post-btn').css("display","block");
                 // $(".hide").css("display","block"); Will show by default
                  $( "#tabs" ).tabs({
//                    collapsible: true,
//                    hide: { effect: "explode", duration: 1000 },
//                    active: 1
                  });
            }
            function closeTab()
            {
//                $("#tabs").tabs("destroy");
//                $(".hide").css("display","none");
            }
            form.onSubmit = function(){
            	   form.action = form.action.replace(",", "");
            	   return true;
            }
            function replaceComma()
            {
				$('#number').val($('#number').val().replace(/,/g, ''))
				return true
            }
            function removeComma()
            {
				$('#number1').val($('#number1').val().replace(/,/g, ''))
				return true
            }
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('#show').click(function(){
                $('#property').dialog({
                    draggable: false,
                    resizable: false,
                    modal: true,
//                    height: '600',
                    height: 'auto',
                    width: '100%',
                    appendTo: '#nav'
                });
            });
             $( "#tabs" ).tabs({ });
        });
         $('#number').keyup(function(event) {

        // skip for arrow keys
        if(event.which >= 37 && event.which <= 40) return;

        // format number
        $(this).val(function(index, value) {
        return value
        .replace(/\D/g, "")
        .replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        ;
        });
        });
         $('#number1').keyup(function(event) {

             // skip for arrow keys
             if(event.which >= 37 && event.which <= 40) return;

             // format number
             $(this).val(function(index, value) {
             return value
             .replace(/\D/g, "")
             .replace(/\B(?=(\d{3})+(?!\d))/g, ",")
             ;
             });
             });
     // System for American Numbering 
        var th_val = ['', 'thousand', 'million', 'billion', 'trillion'];
        // System for uncomment this line for Number of English 
        // var th_val = ['','thousand','million', 'milliard','billion'];
        
        var dg_val = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'];
        var tn_val = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'];
        var tw_val = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];
        function toWordsconver(s) {
        s = s.toString();
            s = s.replace(/[\, ]/g, '');
            if (s != parseFloat(s))
                return 'not a number ';
            var x_val = s.indexOf('.');
            if (x_val == -1)
                x_val = s.length;
            if (x_val > 15)
                return 'Number is too big';
            var n_val = s.split('');
            var str_val = '';
            var sk_val = 0;
            for (var i = 0; i < x_val; i++) {
                if ((x_val - i) % 3 == 2) {
                    if (n_val[i] == '1') {
                        str_val += tn_val[Number(n_val[i + 1])] + ' ';
                        i++;
                        sk_val = 1;
                    } else if (n_val[i] != 0) {
                        str_val += tw_val[n_val[i] - 2] + ' ';
                        sk_val = 1;
                    }
                } else if (n_val[i] != 0) {
                    str_val += dg_val[n_val[i]] + ' ';
                    if ((x_val - i) % 3 == 0)
                        str_val += 'hundred ';
                    sk_val = 1;
                }
                if ((x_val - i) % 3 == 1) {
                    if (sk_val)
                        str_val += th_val[(x_val - i - 1) / 3] + ' ';
                    sk_val = 0;
                }
            }
            if (x_val != s.length) {
                var y_val = s.length;
                str_val += 'point ';
                for (var i = x_val + 1; i < y_val; i++)
                    str_val += dg_val[n_val[i]] + ' ';
            }
            return str_val.replace(/\s+/g, ' ');
        }

      /*   $(document).ready(function(){
        	 $('#propTypes').attr("hidden", false);
         }); */
       $('#radioResidential').click(function(){
           $('#propTypes').attr("hidden", false);
          $('#propCommercial').attr('hidden',true);
       });
       $('#radioCommercial').click(function(){
    	   $('#propTypes').attr("hidden", true);
           $('#propCommercial').attr('hidden',false);

        });
        document.getElementById('number').onkeyup = function () {
            document.getElementById('words').innerHTML = toWordsconver(document.getElementById('number').value);
        };
        document.getElementById('number1').onkeyup = function () {
            document.getElementById('words1').innerHTML = toWordsconver(document.getElementById('number1').value);
        };
    </script>
    </body>
</html>