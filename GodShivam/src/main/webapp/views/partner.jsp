<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" crossorigin="anonymous">
 <link rel="stylesheet" href="https://use.fontawe/some.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">  
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.structure.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.theme.min.css">
<title>Join Us...</title>
<style>
     .page-wrapper{
            min-height: 100%;
        }
          body {
        height: 100vh;
        width: 100vw;
        background-size: cover;
        font-family: sans-serif;
        }
         .button {
     /*  padding: 15px 25px; */
	  font-size: 24px;
	  text-align: center;
	  cursor: pointer;
	  outline: none;
	   border: none;
	  box-shadow: 0 9px #999;
       background: #e3f2fd;
       color: black;
        height: 80px;
        /* border: 1px solid red; */
        border-radius: 5px;
        }
		.button:hover {background-color: aqua}
		.button:active {
		  background-color: aqua;
		  box-shadow: 0 5px #666;
		  transform: translateY(4px);
		}
		.btn{
        border-right: 2x solid black;
        }
         .page-wrapper{
            min-height: 100%;
        }
         .heading-section{
            width: 100%;  
           /*  height: fit-content;   */
           height: 60px;
          /* padding-left: 20px;  */
        /*   padding: 30px;	 */
          text-align: center; 
          display: flex;
        }
         .input{
       /*   display: block; */
         width: 80%;
         padding: 0;
         box-sizing: border-box;
         outline: none;
         padding: 10px;
         height: 40px;
         border-radius: 5px;
         margin: 15px;
         float: right;
        }
        label{
         float: left;
        }
         .span{
         display: block; 
        padding: 0px 4px 0px 6px;
       /*  overflow: hidden;  */
        /* margin-bottom: 20px;  */
        }
        #mbox{
            width: 700px; 
          /* width: fit-content;  */
          height: 650px;
         /*  padding: 20px;   */
         /*  background: #e3f2fd; */
          color: grey;
          margin: 2%;
          float: right;
          overflow-y: auto;
          font-weight: bold;
          border: 5px solid black;
          box-sizing: border-box;
        }
        #inputs{
         padding: 30px;
        }
        .spacing{
        /*  padding: 30px; */
        }
       #basic{
         width: 33%;
         height: 60px;
         margin-top: 0;
         background: hotpink;
       }
       
       .btns{
         width: 33.33%;
         height: 60px;
         background: hotpink;
         border: 2px solid black;
         padding: 16px;
         cursor: pointer;
       }
       #web{
       margin-left: 33%;
       margin-top: 0;
         width: 34%;
         height: 60px;
         background: hotpink;
       }
       #additional{
         margin-left: 67%;
         margin-top: 0;
         width: 33%;
         height: 60px;
         background: hotpink;
       }
       .active{
        background: white;
        color: black;
       }
       .passive{
        background: hotpink;
        color: black;
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
  <div class="page-wrapper">
  <jsp:include page="Header.jsp"></jsp:include>
   <!-- <div id="mbox">
     <div class="heading-section">
       <div class="btns passive" onclick="active()">Basic Information</div>
       <div class="btns passive" onclick="active()">Website Information</div>
       <div class="btns passive" onclick="active()">Additional Information</div>
      <button id="basic">Basic Information</button>
      <button id="web">Website Information</button>
     <button id="additional">Additional Information</button>
     </div>
     
     <div id="inputs">
      <form class="form-body" action="/" method="post">
      <div class="spacing">
       <label>First Name</label>
       <span>
       <input type="text" name="firstName"/>
       </span>
      </div>
      <div class="spacing">
      <label>Last Name</label>
       <span>
       <input type="text" name="lastName"/>
       </span>
      </div>
       <div class="spacing">
        <label>Company</label>
       <span>
       <input type="text" name="company"/>
       </span>
       </div>
      <div class="spacing">
       <label>Website</label>
      <span>
       <input type="text" name="website"/>
      </span>
      </div>
     <div class="spacing">
       <label>Address</label>
      <span>
       <input type="text" name="address"/>
      </span>
     </div>
      <div class="spacing">
        <label>City</label>
       <span>
       <input type="text" name="city"/>
       </span>
      </div>
      <div class="spacing">
       <label>Zip/Postal Code</label>
       <span>
       <input type="text" name="zipCode"/>
       </span>
      </div>
      <div class="spacing">
       <label>Headquarters Location</label>
      <span style="padding-bottom: 30px;">
       <input type="text" name="headquarters"/>
      </span>
      </div>
      <div class="spacing">
       <label>Email</label>
       <span>
       <input type="email" name="email"/>
       </span>
      </div>
     <div class="spacing">
      <label>Mobile</label>
       <span>
       <input type="text" name="mobile"/>
       </span>
     </div>
      <div class="spacing">
       <label>Phone</label>
       <span>
       <input type="text" name="phone"/>
       </span>
      </div>
     <div class="spacing">
      <label>How would you describe the main focus of your company?</label>
      <span style="padding-bottom: 30px;">
       <input type="text" name="focus"/>
      </span>  
     </div>
         
     </form>  
     </div>
    
   </div>  -->
     <div id="tabs" style="height: 450px; width: 1050px;overflow: auto;float: right;margin: 30px;">
        <ul>
            <li><a href="#tabs-1">Basic Information</a></li>
            <li><a href="#tabs-2">Website Information</a></li>
            <li><a href="#tabs-3">Additional Information</a></li>
            <!--<a href="javascript:void(0);" onclick="closeTab();" class="close"></a>-->
        </ul>
        <div id="tabs-1" title="Basic Information" style="height: fit-content;">
         <form class="form-body" action="/" method="post">
	      <div class="spacing">
	       <label>First Name</label>
	       <span class="span">
	       <input type="text" class="input" name="firstName"/>
	       </span>
	      </div>
	      <div class="spacing">
	      <label>Last Name</label>
	       <span class="span">
	       <input type="text" class="input" name="lastName"/>
	       </span>
	      </div>
	       <div class="spacing">
	        <label>Company</label>
	       <span class="span">
	       <input type="text" class="input" name="company"/>
	       </span>
	       </div>
	      <div class="spacing">
	       <label>Website</label>
	      <span class="span">
	       <input type="text" class="input" name="website"/>
	      </span>
	      </div>
	     <div class="spacing">
	       <label>Address</label>
	      <span class="span">
	       <input type="text" class="input" name="address"/>
	      </span>
	     </div>
	      <div class="spacing">
	        <label>City</label>
	       <span class="span">
	       <input type="text" class="input" name="city"/>
	       </span>
	      </div>
	      <div class="spacing">
	       <label>Zip/Postal Code</label>
	       <span class="span">
	       <input type="text" name="zipCode"/>
	       </span>
	      </div>
	      <div class="spacing">
	       <label>Headquarters Location</label>
	      <span class="span" style="padding-bottom: 30px;">
	       <input type="text" class="input" name="headquarters"/>
	      </span>
	      </div>
	      <div class="spacing">
	       <label>Email</label>
	       <span class="span">
	       <input type="email" class="input" name="email"/>
	       </span>
	      </div>
	     <div class="spacing">
	      <label>Mobile</label>
	       <span class="span">
	       <input type="text" class="input" name="mobile"/>
	       </span>
	     </div>
	      <div class="spacing">
	       <label>Phone</label>
	       <span class="span">
	       <input type="text" class="input" name="phone"/>
	       </span>
	      </div>
	     <div class="spacing">
	      <label>How would you describe the main focus of your company?</label>
	      <span class="span" style="padding-bottom: 30px;">
	       <input type="text" class="input" name="focus"/>
	      </span>  
	     </div>
	         
	     </form>  
        </div>
         <div id="tabs-2" title="Website Information" style="height: fit-content;">
	      <div class="spacing">
	       <label>Website Name</label>
	      <span class="span">
	       <input type="text" class="input" name="website"/>
	      </span>
	      </div>
	     <div class="spacing">
	       <label>Website Url</label>
	      <span class="span">
	       <input type="text" class="input" name="address"/>
	      </span>
	     </div>
	      <div class="spacing">
	       <label>Webpage Url for Accepting Data</label>
	       <span class="span">
	       <input type="email" class="input" name="email"/>
	       </span>
	      </div>
         </div>
          <div id="tabs-3" title="Additional Information" style="height: fit-content;">
           <div class="spacing">
	      <label>Business Type</label>
	       <span class="span radio-toolbar">
		        <input type="radio" id="radioResidential" name="businessType" value="Residential" checked>
		        <label for="radioResidential">Residential</label>
		    
		        <input type="radio" id="radioCommercial" name="businessType" value="Commercial">
		        <label for="radioCommercial">Commercial</label>
		        <input type="radio" id="radioBoth" name="businessType" value="Both">
		        <label for="radioBoth">Both</label>
	       </span>
	     </div>
	     <div class="spacing">
	      <label>Company's Main focus</label>
	      <span class="span" style="padding-bottom: 30px;">
	       <input type="text" class="input" name="focus"/>
	      </span>  
	     </div>	 
	     <div class="spacing">
	      <label>Required Information List(pdf)</label>
	      <span class="span">
	        <input type="file" name="informationList" accept = "application/pdf" />
	      </span>  
	     </div>	  
	      <div class="spacing">
	      <label>Required Information Category</label>
	      <span class="span radio-toolbar" style="padding-bottom: 30px;">
	        <input type="radio" id="radioSale" name="informationType" value="Sale" checked>
		        <label for="radioSale">Sale</label>
		    
		        <input type="radio" id="radioRent" name="informationType" value="Rent">
		        <label for="radioRent">Rent</label>
		        <input type="radio" id="radioInfoBoth" name="informationType" value="Both">
		        <label for="radioInfoBoth">Both</label>
	      </span>  
	     </div>	  
	     </div>
      </div>  
   </div>
<jsp:include page="Footer.jsp"/>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
 <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
 <script>
	$( "#tabs" ).tabs({ 
		});
    function active()
    {
    	 $(".active").map(function() {
    	    this.toggleClass("active");
    	});
     	var h = $(this).html();
         alert(h);
      	/* $(this).removeClass("passive");
      	$(this).addClass("active"); */
       	overflow: "auto"
    }
 </script>
</body>
</html>