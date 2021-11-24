<%@page import="com.props.godshivam.Helper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resending...</title>
    </head>
    <body>
        <%
            session = request.getSession();
            if(session != null)
            {
                String mobile = (String)session.getAttribute("mobileNo");
                if(mobile != null)
                {
                    String message = Helper.SendOTP(mobile);
                    session.setAttribute("otp", Helper.otp);
                    session.setAttribute("message", message);
                    response.sendRedirect("otp-verification");
                }
            }
        %>
    </body>
</html>