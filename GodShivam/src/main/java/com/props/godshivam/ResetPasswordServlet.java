package com.props.godshivam;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.props.godshivam.dao.DataDao;

/**
 * Servlet implementation class ResetPasswordServlet
 */
@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException 
	    {
	         HttpSession session = request.getSession();
	        if(session != null)
	        {
	            String mobile = (String)session.getAttribute("mobileNo");
	            if(mobile != null)
	            {
	                String password = request.getParameter("newPassword");
	                int status = DataDao.update(mobile, password);
	                if(status == 1)
	                {
	                   session.setAttribute("message", "Password updated successfully.");
	                }
	                else
	                {
	                    session.setAttribute("message", "Couldn't update the password. Please try again!");
	                }
	                response.sendRedirect("index.jsp");
	            }
	        }
	    }
}
