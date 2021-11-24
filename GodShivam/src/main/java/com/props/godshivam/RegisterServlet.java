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

import com.props.godshivam.dao.RegisterDao;



/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	                 PrintWriter out = response.getWriter();
	                 HttpSession session = request.getSession();
	                 response.setContentType("text/html");
	                  int id = 0;
	                  RegisterData data = new RegisterData();
//	                  Part filePart = request.getPart("flPhoto");
	                  Collection<Part> files = request.getParts();
	                  InputStream inputStream = null;
	                  String filePaths = "";
	                  List extensions = Stream.of(".mp4",".jpg",".png",".jpeg",".mov",".wmv",".flv",".avi",".avchd",".webm",".mkv",".dpi",".ppi",".gif").collect(Collectors.toList());
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
//	                    else
//	                    {
//	                        HttpSession session = request.getSession();
//	                        session.setAttribute("message", "Only image jpg, jpeg and png files are allowed");
//	                        response.sendRedirect("index.jsp");
//	                    }
	                  }
	                    data.setName(request.getParameter("name"));
	                    data.setEmail((String)session.getAttribute("user"));
	                    data.setAddress(request.getParameter("address"));
	                    data.setCity(request.getParameter("city"));
	                    data.setPropertyStatus(request.getParameter("status"));
	                    data.setArea(request.getParameter("area"));
	                    data.setAreaUnit(request.getParameter("areaUnit"));
	                    data.setBHK(Integer.parseInt(request.getParameter("bhk")));
	                    data.setFurnishedType(request.getParameter("furnishedType"));
	                    data.setPrice(Float.parseFloat(request.getParameter("price")));
	                    String contact = request.getParameter("contact");
	                    data.setContact(contact);
	                    data.setPhotoPath(filePaths);
	                    List<RegisterData> usersList = RegisterDao.read();
	                    int flag = 0;
	                    for(RegisterData rd : usersList)
	                    {
	                        if(rd.getContact().equals(contact))
	                        {
	                            flag++;
	                        }
	                    }

	                    if(flag == 0)
	                    {
	                       try{
	                          id = RegisterDao.insert(data);
//	                            out.println("I = "+ i);
	                          if(id != -1)
	                          {
	                            session.setAttribute("message", "Successfully Registered...");
	                            session.setAttribute("id", id);
	                            response.sendRedirect("PostRegister.jsp");
	                          }
	                          else
	                          {
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
	                        session.setAttribute("message", "Your no. is already registered!");
	                        response.sendRedirect("index.jsp");
	                    }
	                
	    }
}
