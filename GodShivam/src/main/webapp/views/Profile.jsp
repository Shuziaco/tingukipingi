<%@page import="com.props.godshivam.Helper"%>
<%@page import="com.props.godshivam.dao.RegisterDao"%>
<%@page import="com.props.godshivam.dao.DataDao"%>
<%@page import="com.props.godshivam.RegisterData"%>
<%@page import="java.util.List"%>
<%@page import="com.props.godshivam.CommonAppData"%>
<%@page import="com.props.godshivam.RentalMembers"%>
<%@page import="com.props.godshivam.RentalData"%>
<%@page import="com.google.gson.Gson" %>
<%@page import="com.google.gson.reflect.TypeToken" %>
<%@page import="java.lang.reflect.Type" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>You!</title>
        <link href="http://vjs.zencdn.net/4.12/video-js.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="css/lightGallery.css">
        <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<!--   <link rel="stylesheet" type="text/css" href="styles.css"> -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <style>
            table{
                width: 100%;
            }
            tr{
                width: 100%;
            }
            #message
            {
                /* background-color: hotpink; */
                width: 50%;
                height: 30%;
                /* padding: 10%; */
                margin: 10%;
            }
        </style>
         <style>
        body{
            font-family: sans-serif;
        }
        .gallery{
            margin: 10px 50px;
        }
        .bigImage{
            width: 100%;
            height: 100%;
            text-align: center;
        }
        .gallery img{
            width: 230px;
            padding: 5px;
        }
        body{
/*                background-color: #152836;
                    color: white;*/
            }
            .demo-gallery > ul {
                margin-bottom: 0;
            }
            .demo-gallery > ul > li {
                float: left;
                margin-bottom: 45px;
                margin-right: 45px;
                width: 200px;
            }
            .demo-gallery > ul > li a {
                border: 3px solid #FFF;
                border-radius: 3px;
                display: block;
                overflow: hidden;
                position: relative;
                float: left;
            }
            .demo-gallery > ul > li a > img {
                -webkit-transition: -webkit-transform 0.15s ease 0s;
                -moz-transition: -moz-transform 0.15s ease 0s;
                -o-transition: -o-transform 0.15s ease 0s;
                transition: transform 0.15s ease 0s;
                -webkit-transform: scale3d(1, 1, 1);
                transform: scale3d(1, 1, 1);
                /*border: 20px solid black;*/
/*                height: 100%;
                width: 100%;*/
                width: 230px;
                /*padding: 5px;*/
            }
            .demo-gallery > ul > li a:hover > img {
                -webkit-transform: scale3d(1.1, 1.1, 1.1);
                transform: scale3d(1.1, 1.1, 1.1);
            }
            .demo-gallery > ul > li a:hover .demo-gallery-poster > img {
                opacity: 1;
            }
            .demo-gallery > ul > li a .demo-gallery-poster {
                background-color: rgba(0, 0, 0, 0.1);
                bottom: 0;
                left: 0;
                position: absolute;
                right: 0;
                top: 0;
                -webkit-transition: background-color 0.15s ease 0s;
                -o-transition: background-color 0.15s ease 0s;
                transition: background-color 0.15s ease 0s;
            }
            .demo-gallery > ul > li a .demo-gallery-poster > img {
                left: 50%;
                margin-left: -10px;
                margin-top: -10px;
                opacity: 0;
                position: absolute;
                top: 50%;
                -webkit-transition: opacity 0.3s ease 0s;
                -o-transition: opacity 0.3s ease 0s;
                transition: opacity 0.3s ease 0s;
            }
            .demo-gallery > ul > li a:hover .demo-gallery-poster {
                background-color: rgba(0, 0, 0, 0.5);
            }
            .demo-gallery .justified-gallery > a > img {
                -webkit-transition: -webkit-transform 0.15s ease 0s;
                -moz-transition: -moz-transform 0.15s ease 0s;
                -o-transition: -o-transform 0.15s ease 0s;
                transition: transform 0.15s ease 0s;
                -webkit-transform: scale3d(1, 1, 1);
                transform: scale3d(1, 1, 1);
                height: 100%;
                width: 100%;
            }
            .demo-gallery .justified-gallery > a:hover > img {
                -webkit-transform: scale3d(1.1, 1.1, 1.1);
                transform: scale3d(1.1, 1.1, 1.1);
            }
            .demo-gallery .justified-gallery > a:hover .demo-gallery-poster > img {
                opacity: 1;
            }
            .demo-gallery .justified-gallery > a .demo-gallery-poster {
                background-color: rgba(0, 0, 0, 0.1);
                bottom: 0;
                left: 0;
                position: absolute;
                right: 0;
                top: 0;
                -webkit-transition: background-color 0.15s ease 0s;
                -o-transition: background-color 0.15s ease 0s;
                transition: background-color 0.15s ease 0s;
            }
            .demo-gallery .justified-gallery > a .demo-gallery-poster > img {
                left: 50%;
                margin-left: -10px;
                margin-top: -10px;
                opacity: 0;
                position: absolute;
                top: 50%;
                -webkit-transition: opacity 0.3s ease 0s;
                -o-transition: opacity 0.3s ease 0s;
                transition: opacity 0.3s ease 0s;
            }
            .demo-gallery .justified-gallery > a:hover .demo-gallery-poster {
                background-color: rgba(0, 0, 0, 0.5);
            }
            .demo-gallery .video .demo-gallery-poster img {
                height: 48px;
                margin-left: -24px;
                margin-top: -24px;
                opacity: 0.8;
                width: 48px;
            }
            .demo-gallery.dark > ul > li a {
                border: 3px solid #04070a;
            }
            .home .demo-gallery {
                padding-bottom: 80px;
            }
    </style>
    </head>
    <body class="home">
        <script src="http://vjs.zencdn.net/4.12/video.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <b>Your information is here!</b><hr>
        <table border="1" class="table table-striped">
            <%! int count = 0; %>
        <%
           /*  String visitor = (String)session.getAttribute("user"); */
            //CommonAppData user = null;
           RentalMembers user = (RentalMembers)session.getAttribute("rentalMember");
           List<RentalData> rdUsers = (List<RentalData>)session.getAttribute("members");
            //List<RegisterData> rdUsers = null;
           /*  if(visitor != null)
            {
                user = DataDao.getUserByEmail(visitor);
                rdUsers =  RegisterDao.getRegisterDataByEmail(visitor); 
            } */
         
            if(user != null)
            {
        %>               
        <tr><td><b>Name</b></td><td class="data"><%=user.getName()%></td> <td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td></tr>
        <tr><td><b>Email</b></td><td class="data"><%=user.getEmail()%></td><td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td></tr>
        <tr><td><b>Mobile No.</b></td><td class="data"><%=user.getMobileNo()%></td><td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td></tr>
        <%
            }
        %>
         </table>
         
         <h2>Registered Properties</h2>
         <% 
            if(rdUsers != null)
            {
//                int count = 0;
               // for(RegisterData rd : rdUsers)
            	 for(RentalData rd : rdUsers)   
                {
                    count++;
                %>
        <table border="1" class="table table-striped">
        <tr><td><b>Name</b></td><td class="data"><%=rd.getName()%></td> <td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td></tr>
        <tr><td><b>City</b></td><td class="data"><%=rd.getCity()%></td><td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td></tr>
        <tr><td><b>Address</b></td><td class="data"><%=rd.getAddress()%></td><td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td></tr>
        <tr><td><b>BHK</b></td><td class="data"><%=rd.getBhk()%></td> <td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td></tr>
        <tr><td><b>Property Status</b></td><td class="data"><%=rd.getPropertyStatus()%></td><td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td></tr>
        <tr><td><b>Furnished Type</b></td><td class="data"><%=rd.getFurnishType()%></td><td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td></tr>
       <tr><td><b>Area</b></td><td class="data"><%=rd.getArea()%><%=rd.getAreaUnit()%></tdgetName> <td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td></tr>
        <tr><td><b>Price</b></td><td class="data"><%=rd.getPrice()%></td><td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td></tr>
        <tr><td><b>Contact</b></td><td class="data"><%=rd.getContact()%></td><td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td></tr>
         <!--<input type="text" value="${pageContext.request.contextPath}"/>-->
          <tr><td><b>Picture</b></td><td> <div class="demo-gallery">
                        <%
            Type listType = new TypeToken<List<String>>(){}.getType(); 
            out.println(listType);
            List<String> photoPaths = new Gson().fromJson(rd.getPhoto(),listType);
            //out.println(photoPaths);
          //  String[] photoPaths = rd.getPhotoPath().split(";");
            int video = 0;
            for(String path : photoPaths)
            {
                String image = path.substring(path.lastIndexOf("/")+1);
                if( Helper.isVideoFile(image))
                 {
                     video++;
                     String extension = image.substring(image.lastIndexOf(".")+1);
                     %>          
                <div style="display:none;" id="video<%=video%>">
                    <video class="lg-video-object lg-html5 video-js vjs-default-skin" controls preload="none">
                        <source src="Images/<%=image%>" type="video/<%=extension%>">
                         Your browser does not support HTML5 video.
                    </video>
                </div>
                           <%
                 }
            }
              %>
        <ul id="lightgallery<%=count%>" class="list-unstyled row">
          
        <%
            //String[] mediaPaths = rd.getPhotoPath().split(";");
            int videocount = 0;
            for(String path : photoPaths)
            {
//                out.println(System.getProperty("user.dir"));
                
//                System.setProperty("user.dir", path.substring(0,path.lastIndexOf("/")+1));
                //File directory = new File(path.substring(0, path.lastIndexOf("/")+1));
//                 out.println(System.getProperty("user.dir"));
                String image = path.substring(path.lastIndexOf("\\")+1);
                out.println(image);
                if( Helper.isVideoFile(image))
                 {
                     videocount++;
                     String extension = image.substring(image.lastIndexOf(".")+1);
                     %>          
                <li data-sub-html="video caption1" data-html="#video<%=videocount%>"><a href="">
                   <img src="clogo.png" /></a>
                </li>
<!--               <video width="320" height="240" controls >
                 <source src="Images/<%=image%>" type="video/<%=extension%>">
               </video>-->
       
              <%
                 }
                else
                {  
                	if(image != null){                %>
            <li  data-src="Images/<%=image%>">
                <a href=""><img class="img-responsive" src="Images/<%=image%>"></a>
            </li>
          <!--<img src="Images/<%=image%>" width="150" height="150"></td> <td><button class="edit">Edit</button></td><td><button class="save" hidden>Save</button></td>-->
        <%}
            }
             }
        %>
       </ul></div></td></tr>
        </table>
        <%        
           }
          }
         %>
    <script src="https://cdn.jsdelivr.net/picturefill/2.3.1/picturefill.min.js"></script>
    <script src="https://cdn.rawgit.com/sachinchoolur/lightgallery.js/master/dist/js/lightgallery.js"></script>
    <script src="https://cdn.rawgit.com/sachinchoolur/lg-pager.js/master/dist/lg-pager.js"></script>
    <script src="https://cdn.rawgit.com/sachinchoolur/lg-autoplay.js/master/dist/lg-autoplay.js"></script>
    <script src="https://cdn.rawgit.com/sachinchoolur/lg-fullscreen.js/master/dist/lg-fullscreen.js"></script>
    <script src="https://cdn.rawgit.com/sachinchoolur/lg-zoom.js/master/dist/lg-zoom.js"></script>
    <script src="https://cdn.rawgit.com/sachinchoolur/lg-hash.js/master/dist/lg-hash.js"></script>
    <script src="https://cdn.rawgit.com/sachinchoolur/lg-share.js/master/dist/lg-share.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/lightgallery.js@1.1.3/dist/js/lightgallery.js"></script>

    <script src="https://cdn.rawgit.com/sachinchoolur/lg-video.js/master/dist/lg-video.js"></script>
    <script src="js/lg-rotate.min.js"></script>
    <script>
       <%
          for(int i=1; i<=count; i++)
          {
              %>
               lightGallery(document.getElementById('lightgallery<%=i%>'));
//                $('#lightgallery<%=i%>').lightGallery({}); 
               <%
          }
        %>
    </script>
         <script>
               $('document').ready(function(){

               /*  $('.edit').click(function(){
                    $('.data').attr('contenteditable','true');
                    $('.edit').hide();
                    $('.save').removeAttr('hidden');
                });
                $('.save').click(function(){
                    $('.data').attr('contenteditable','false');
                    $('.save').attr('hidden', 'true');
                    $('.edit').show();
                }); */
            });
         </script>
    </body>
</html>