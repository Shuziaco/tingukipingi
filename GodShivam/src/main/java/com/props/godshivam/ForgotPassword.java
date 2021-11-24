package com.props.godshivam;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.props.godshivam.dao.DataDao;

public class ForgotPassword extends HttpServlet
{
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException 
	    {
	        String mobile = request.getParameter("registeredNumber");
	        int flag = 0;
	        List<CommonAppData> members = DataDao.read();
	         HttpSession session = request.getSession();
	        for(CommonAppData data : members)
	        {
	            if(data.getMobileNo().equals(mobile))
	            {
	                flag = 1;
	                String message = Helper.SendOTP(mobile);
	                System.out.println("OTP is - "+ Helper.otp);
	               // String success = "OTP sent on your mobile number.";              
	                session.setAttribute("mobileNo", mobile);
	                session.setAttribute("otp", Helper.otp);
	                session.setAttribute("message", message);
	                response.sendRedirect("VerifyOTP.jsp");
	            }
	        }
	        
	        if(flag == 0)
	        {
	            session.setAttribute("message", "This mobile no is not registered!");
	            response.sendRedirect("index.jsp");
	        }
	    }
}