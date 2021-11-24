<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Pick Websites of your choice</title>
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" crossorigin="anonymous">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
            <link rel="stylesheet" href="./css/Easy.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.structure.min.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.theme.min.css">
            <link rel="stylesheet" href="/resources/demos/style.css">   
            <link rel="stylesheet" href="./css/Easy.css">

    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
            response.setHeader("Pragma", "no-cache"); // HTTP 1.0
            response.setDateHeader("Expires", 0); // Proxies.
        %>
        <nav id="nav" class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		  </button>
		  <a class="navbar-brand" href="#">
		  <img src="clogo.png" alt="Logo" style="width:70px;">
		  </a>
          <b style="font-size:40px;">EasyGo</b>
		  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
			<ul id="ribbon" class="navbar-nav ml-auto mt-2 mt-lg-0">
			  <li class="nav-item active">
				<a class="nav-link" href="/" style="font-size: 30px">Home</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="#" style="font-size: 30px">About</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link " href="#" style="font-size: 30px">Contact</a>
			  </li>
                          <li class="nav-item dropdown">
                               
				<a class="nav-link dropdown-toggle" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false" href="#" style="font-size: 20pt;color: #333;"> <i class="fas fa-user"></i>${sessionScope.user}</a>
                                <ul class="dropdown-menu" >
                                     <li><a class="dropdown-item" href="profile">Profile</a></li>
                                    <li><a class="dropdown-item" href="logout">Logout</a></li>
                                </ul>
			  </li>
			</ul>
		  </div>
		</nav>
              
            <h2>You have registered with us successfully. Now, click the below buttons to register your property with your favorite web sites.</h2>
            <form method="post" action="InvokeTransferServlet">
                <input type="text" name="web" value="99acres" hidden="true"/>
                <input class="buttons webbtn" type="submit" value="99Acres"/>
            </form>
        <%
          if(session.getAttribute("user")==null)
          {
              response.sendRedirect("/");
          }
          else
          {
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
        });
    </script>
    </body>
    </body>
</html>