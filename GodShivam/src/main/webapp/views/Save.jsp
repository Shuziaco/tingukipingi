<%@page import="com.props.godshivam.dao.DataDao"%>
<%@page import="java.util.List"%>
<%@page import="com.props.godshivam.CommonAppData"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Saving...</title>
    </head>
    <body>
    
        <%
            CommonAppData c = new CommonAppData();
            c.setName(request.getParameter("name"));
            c.setEmail(request.getParameter("email"));
            c.setPassword(request.getParameter("password"));
            c.setMobileNo(request.getParameter("mobile"));
            int count=0;
            int i = 0;
            List<CommonAppData> usersData = DataDao.read();
            for(CommonAppData user: usersData)
            {
              if(user.getEmail().equals(c.getEmail()))
               {
                  count++;
               }
            } 
            if(count==0 )
            {    
                i=DataDao.insert(c);
                if(i==1)
                {
                   session = request.getSession();
                   session.setAttribute("message", "Successfully registered...");
                   response.sendRedirect("/");
                }
                else
                {
                    session = request.getSession();
                    session.setAttribute("message", "Error while signing up! Please try again.");
                    response.sendRedirect("/");
                }
            }
            else
            {
                session = request.getSession();
                session.setAttribute("message", "Email is  already registered!");
                response.sendRedirect("/");
            }
        %>
    </body>
</html>
