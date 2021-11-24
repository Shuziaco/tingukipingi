<%@page import="com.props.godshivam.dao.DataDao"%>
<%@page import="com.props.godshivam.CommonAppData"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verifying...</title>
    </head>
    <body>
       <%
           String email = request.getParameter("email");
        String password = request.getParameter("password");
        int loginStatus = 0;
        System.out.println("Email - "+ email);
        List<CommonAppData> dataList = DataDao.read();
        
            for (CommonAppData data : dataList) {
                  System.out.println(data.getEmail());
                if(data.getEmail().equals(email) && data.getPassword().equals(password))
                {
                    loginStatus = 1;
                    session = request.getSession();
                    session.setAttribute("user", email);
                    response.sendRedirect("loggedIn");
                }
            }
            
            if(loginStatus == 0)
            {  
                session = request.getSession();
                session.setAttribute("message", "Incorrect email or password!");
//                response.sendRedirect("index.jsp");
                response.sendRedirect("/");
            }
       %>
    </body>
</html>