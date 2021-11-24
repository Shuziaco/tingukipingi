<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
            session = request.getSession();
            session.invalidate();
            session = request.getSession(true);
            session.setAttribute("message", "You are successfully logged out.");
                
            response.sendRedirect("/");
        %>
    </body>
</html>