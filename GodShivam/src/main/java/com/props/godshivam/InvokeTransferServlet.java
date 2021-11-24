package com.props.godshivam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.props.godshivam.dao.RegisterDao;

/**
 * Servlet implementation class InvokeTransferServlet
 */
@WebServlet("/InvokeTransferServlet")
public class InvokeTransferServlet extends HttpServlet {
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                 PrintWriter out = response.getWriter();
                 response.setContentType("text/html");
                
                 String website = request.getParameter("web");
                 HttpSession session = request.getSession();
                 int i = 0;
                 int id = (int)session.getAttribute("id");
                if(id > 0)
                {
                   i =  RegisterDao.Transfer(id);
                    if(i == 1)
                    {
                      session = request.getSession();
                      session.setAttribute("message", "Successfully Registered with " +website);
                      session.setAttribute("id", id);
                      response.sendRedirect("PostRegister.jsp");
                    }
                    else
                    {
                      session = request.getSession();
                      session.setAttribute("message", "Oops! something went wrong.");
                      response.sendRedirect("LoginPage.jsp");
                    }
                }              
    }

}
