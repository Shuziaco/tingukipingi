package com.props.godshivam;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.props.godshivam.dao.RentDao;


/**
 * Servlet implementation class RentServlet
 */
@WebServlet("/RentServlet")
public class RentServlet extends HttpServlet {
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException
	    {
	        PrintWriter out = response.getWriter();
	        response.setContentType("text/html");
	        int i = 0;
	        Renting data = new Renting();
//	                  Part filePart = request.getPart("flPhoto");
	        Collection<Part> files = request.getParts();
	        InputStream inputStream = null;
	        String filePaths = "";
	        List extensions = Stream.of(".mp4","jpg","png","jpeg",".mov",".wmv",".flv",".avi","avchd",".webm",".mkv",".dpi",".ppi",".gif").collect(Collectors.toList());
	        RandomString random = new RandomString(5);
	        for(Part filePart: files)
	        {
	            if(filePart.getSubmittedFileName() != null && (extensions.stream().anyMatch(s -> filePart.getSubmittedFileName().endsWith((String) s))) )
	            {
	                out.println("Name is - "+ filePart.getName());
	                out.println("Size is - "+ filePart.getSize());
	                out.println("Content Type is - "+ filePart.getContentType());
	                String fname = filePart.getSubmittedFileName();
	                inputStream = filePart.getInputStream();
	                String fileName = fname.substring(0,fname.indexOf("."))+"_"+request.getParameter("name")+random.nextString()+fname.substring(fname.indexOf(".")); 
	                System.out.println(System.getProperty("user.dir"));
//	                        File file = new File("C:/Users/shivam &ingh/Documents/NetBeansProjects/NewWebsite/web/Images/"+fileName);
	                String path = "F:/BackupC/Documents/NetBeansProjects/NewWebsite/web/Images/"+fileName;
	                Files.copy(inputStream, Paths.get(path), StandardCopyOption.REPLACE_EXISTING);
	                filePaths += path + ";";
	            }
	        }
	        data.setName(request.getParameter("name"));
	        data.setAddress(request.getParameter("address"));
	        data.setCity(request.getParameter("city"));
	        data.setBuildingType(request.getParameter("buildingType"));
	        data.setParking(Boolean.parseBoolean(request.getParameter("parking")));
	        data.setRent(Float.parseFloat(request.getParameter("rent")));
	        data.setFloor(Integer.parseInt(request.getParameter("floor")));
	        data.setTotalFloor(Integer.parseInt(request.getParameter("floors")));
	        data.setFurnishType(request.getParameter("furnishedType"));
	        data.setBhk(Integer.parseInt(request.getParameter("bhk")));
	        String contact = request.getParameter("contact");
	        data.setContact(contact);
	        data.setPhoto(filePaths);
	        List<Renting> usersList = RentDao.read();
	        int flag = 0;
	        for(Renting rd : usersList)
	        {
	            if(rd.getContact().equals(contact))
	            {
	                flag++;
	            }
	        }

	        if(flag == 0)
	        {
	           try{
	              i = RentDao.insert(data);
//	                            out.println("I = "+ i);
	              if(i == 1)
	              {
	                HttpSession session = request.getSession();
	                session.setAttribute("message", "Successfully Registered...");
	                response.sendRedirect("LoginPage.jsp");
	              }
	              else
	              {
	                HttpSession session = request.getSession();
	                session.setAttribute("message", "Oops! something went wrong.");
	                response.sendRedirect("LoginPage.jsp");
	              }
	           }
	           catch(Exception e)
	           {
	              e.printStackTrace();
	              out.println(e.getMessage());
	           }
	        }
	        else
	        {
	            HttpSession session = request.getSession();
	            session.setAttribute("message", "Your no. is already registered!");
	            response.sendRedirect("index.jsp");
	        }
	    }

}
