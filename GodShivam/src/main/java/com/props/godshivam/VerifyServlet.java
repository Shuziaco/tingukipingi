package com.props.godshivam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class VerifyServlet
 */
@WebServlet("/VerifyServlet")
public class VerifyServlet extends HttpServlet {
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException 
	    {
	        HttpSession session = request.getSession();
	        PrintWriter out = response.getWriter();
	        if(session != null)
	        {
	            String message = (String)session.getAttribute("message");
	            if(message != null)
	            {
	                out.println("<script type= \"text/javascript\">");
	                out.println("alert('"+message+"');");
	                out.println("</script>");
	                session.removeAttribute("message");
	            }    
	            String otp = (String)session.getAttribute("otp");
	            String otpToVerify = request.getParameter("otp");
	            if(otp != null && otp.equals(otpToVerify))
	            {
	                response.sendRedirect("SetNewPassword.jsp");
	            }
	        }
	    }
}
