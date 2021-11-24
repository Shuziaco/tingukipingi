package com.props.godshivam.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.client.LaxRedirectStrategy;
import org.apache.http.message.BasicNameValuePair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.remoting.soap.SoapFaultException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;
import org.springframework.web.servlet.view.RedirectView;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.props.godshivam.RandomString;
import com.props.godshivam.RentalData;
import com.props.godshivam.RentalDataRepo;
import com.props.godshivam.RentalMembers;
import com.props.godshivam.RentalMembersRepo;
import com.props.godshivam.Renting;
import com.props.godshivam.RentingRepo;
import com.props.godshivam.t1;
import com.props.godshivam.t1Repo;
//@MultipartConfig()
@Controller
public class RentalMembersController
{
	@Autowired
    private RentalMembersRepo rentalMembersRepo;
	@Autowired
	private RentalDataRepo rentalDataRepo;
	@Autowired
	private RentingRepo rentingRepo;
	@Autowired
	private PasswordEncoder passwordEncoder;
	@Autowired
	private t1Repo t1repo;
	
	
	
	
	
	@PostMapping("logging")
	public ModelAndView verifyLogin(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session)
	{
	   ModelAndView view = new ModelAndView();
	
//	   RentalMembers rm = rentalMembersRepo.findByEmailAndPassword(email, passwordEncoder.encode(password));
	   RentalMembers rm = rentalMembersRepo.findByEmail(email);
	   if(rm != null && passwordEncoder.matches(password, rm.getPassword()))
	   {		
		   session.setAttribute("user", email);
		   view.setViewName("Login");
	   }
	   else 
	   {
		   session.setAttribute("message", "Incorrect email or password!");
		   view.setViewName("index");
	   }
		return view;
	}
	@PostMapping(value="register", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public ModelAndView registerUser(RentalMembers rentalMembers, HttpSession session)
	{
	   ModelAndView view = new ModelAndView();
	   boolean emailExists = rentalMembersRepo.existsByEmail(rentalMembers.getEmail());
	   if(emailExists)
	   {
		   session.setAttribute("message", "Email is already registered.");
		   view.setViewName("SignIn");
	   }
	   else
	   {
		   rentalMembers.setPassword(passwordEncoder.encode(rentalMembers.getPassword()));
		   rentalMembersRepo.save(rentalMembers);
		   view.setViewName("index");
	   }
	    return view;
	}

	@RequestMapping(value="req/data")
	public ModelAndView acceptRequest(HttpServletRequest request, Model m)
	{
		Map<String, ?> inputFlashMap = RequestContextUtils.getInputFlashMap(request);
		if(inputFlashMap != null) {
		RentalData rentalData = (RentalData)inputFlashMap.get("rentalData");
//		RentalData rentalData = (RentalData)m.asMap().get("rentalData");
//		MultipartFile[] files = (MultipartFile[])m.asMap().get("flPhoto");
		MultipartFile[] files = (MultipartFile[])inputFlashMap.get("flPhoto");
		System.out.println(rentalData.getAddress());
		System.out.println(rentalData.getName());
		System.out.println(rentalData.getPhoto());
		System.out.println(files);
		}
		else
		{
			System.out.println("Flash Map is null");
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@PostMapping(value="post/sell", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
	public String sellProperty(RentalData rentalData, @RequestParam("flPhoto")MultipartFile[] pictures, HttpSession session/*, RedirectAttributes redirectAttr*/) throws IOException
	{
		System.out.println("Almost there...");
//	   ModelAndView view = new ModelAndView();
	   InputStream is = null;
	   String filePaths = "";
	   List extensions = Stream.of(".mp4",".jpg",".png",".jpeg",".mov",".wmv",".flv",".avi",".avchd",".webm",".mkv",".dpi",".ppi",".gif").collect(Collectors.toList());
       RandomString random = new RandomString(5);
       String[] paths = new String[pictures.length];
       
       int i = 0;
       for(MultipartFile filePart: pictures)
       {
         if(filePart.getOriginalFilename() != null && (extensions.stream().anyMatch(s -> filePart.getOriginalFilename().endsWith((String) s))) )
         {
        	 
             String fname = filePart.getOriginalFilename();
             is = filePart.getInputStream();
             String fileName = fname.substring(0,fname.indexOf("."))+"_"+rentalData.getName()+random.nextString()+fname.substring(fname.indexOf(".")); 
             System.out.println(System.getProperty("user.dir"));
             String path = System.getProperty("user.dir") + "\\src\\main\\webapp\\Images\\"+fileName;           
             File file = new File(path);
             Files.copy(is, Paths.get(path), StandardCopyOption.REPLACE_EXISTING);
             filePaths += path + ";";
             paths[i] = path;
             i++;
         }
       }
       t1repo.save(new t1( new Gson().toJson(paths).toString()));
      // t1 json = t1repo.getById(new Gson().toJson(paths).toString());
      // Type listType = new TypeToken<List<String>>(){}.getType();
     // List<String> t1List = new Gson().fromJson(json.getPaths(),listType);
//       System.out.println(t1List);
//       for(String s: t1List)
//       {
//    	   System.out.println(s);
//       }
	   rentalData.setEmail((String)session.getAttribute("user"));
	   rentalData.setPhoto(new Gson().toJson(paths).toString());
	 //  rentalData.setPhoto(filePaths);
	   rentalDataRepo.save(rentalData);
	   session.setAttribute("message", "Successfully Registered...");
	   session.setAttribute("rentalData", rentalData);
//	   redirectAttr.addFlashAttribute("rentalData", rentalData);
	   String postData = new Gson().toJson(rentalData);
	   session.setAttribute("pictures", pictures);
//	   view.setViewName("PostRegister");
//	    return view;
//	   return new RedirectView("http://localhost:8081/redirect");
	   return "RedirectPost";
	}
	
//	@RequestMapping("profile")
//	public String redirectProfile(HttpSession session)
//	{
//		String user = (String)session.getAttribute("user");
//		RentalMembers rentalMember = (RentalMembers)rentalMembersRepo.findByEmail(user);
//		List<RentalData> members = rentalDataRepo.findAllByEmail(user);
//		session.setAttribute("members", members);
//		session.setAttribute("rentlaMember", rentalMember);
//		return "Profile";
//	}
	
//	@PostMapping(value="post/sell", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
//	public void sellProperty(RentalData rentalData, @RequestParam("flPhoto")MultipartFile[] pictures, HttpSession session/*, RedirectAttributes redirectAttr*/) throws IOException
//	{
//		System.out.println("Almost there...");
////	   ModelAndView view = new ModelAndView();
//		URL url = new URL("http://localhost:8081/redirect");
//		URLConnection con = url.openConnection();
//		HttpURLConnection http = (HttpURLConnection)con;
////		HttpClient httpClient = HttpClients.createDefault();
//		http.setRequestMethod("POST"); // PUT is another valid option
//		http.setDoOutput(true);
//	   InputStream is = null;
//	   String filePaths = "";
//	   List extensions = Stream.of(".mp4",".jpg",".png",".jpeg",".mov",".wmv",".flv",".avi",".avchd",".webm",".mkv",".dpi",".ppi",".gif").collect(Collectors.toList());
//       RandomString random = new RandomString(5);
//       
//       for(MultipartFile filePart: pictures)
//       {
//         if(filePart.getOriginalFilename() != null && (extensions.stream().anyMatch(s -> filePart.getOriginalFilename().endsWith((String) s))) )
//         {
//             String fname = filePart.getOriginalFilename();
//             is = filePart.getInputStream();
//             String fileName = fname.substring(0,fname.indexOf("."))+"_"+rentalData.getName()+random.nextString()+fname.substring(fname.indexOf(".")); 
//             System.out.println(System.getProperty("user.dir"));
//             String path = System.getProperty("user.dir") + "\\src\\main\\webapp\\Images\\"+fileName;
//             File file = new File(path);
//             Files.copy(is, Paths.get(path), StandardCopyOption.REPLACE_EXISTING);
//             filePaths += path + ";";
//         }
//       }
//	   rentalData.setEmail((String)session.getAttribute("user"));
//	   rentalData.setPhoto(filePaths);
////	   rentalDataRepo.save(rentalData);
//	   session.setAttribute("message", "Successfully Registered...");
////	   redirectAttr.addFlashAttribute("rentalData", rentalData);
//	   String postData = new Gson().toJson(rentalData);
//
//	   http.setFixedLengthStreamingMode(postData.length());
//	   http.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
//	   http.connect();
//	   try(OutputStream os = http.getOutputStream()) {
//		    os.write(postData.getBytes());
//		}	
//	
//	   System.out.println(http.getInputStream().toString());
//	 
////	   view.setViewName("PostRegister");
////	    return view;
////	   return new RedirectView("http://localhost:8081/redirect");
//	}
//	@PostMapping(value="post/sell", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
//	public void sellProperty(RentalData rentalData, @RequestParam("flPhoto")MultipartFile[] pictures, HttpSession session/*, RedirectAttributes redirectAttr*/) throws IOException
//	{
//		System.out.println("Almost there...");
////	   ModelAndView view = new ModelAndView();
//		HttpClient httpClient = 
//			      HttpClientBuilder.create().setRedirectStrategy(new LaxRedirectStrategy()).build();
////		HttpClient httpClient = HttpClients.createDefault();
//		HttpPost httppost = new HttpPost("http://localhost:8081/redirect");
//		httppost.addHeader("Content-Type", "application/json");
//	   InputStream is = null;
//	   String filePaths = "";
//	   List extensions = Stream.of(".mp4",".jpg",".png",".jpeg",".mov",".wmv",".flv",".avi",".avchd",".webm",".mkv",".dpi",".ppi",".gif").collect(Collectors.toList());
//       RandomString random = new RandomString(5);
//       
//       for(MultipartFile filePart: pictures)
//       {
//         if(filePart.getOriginalFilename() != null && (extensions.stream().anyMatch(s -> filePart.getOriginalFilename().endsWith((String) s))) )
//         {
//             String fname = filePart.getOriginalFilename();
//             is = filePart.getInputStream();
//             String fileName = fname.substring(0,fname.indexOf("."))+"_"+rentalData.getName()+random.nextString()+fname.substring(fname.indexOf(".")); 
//             System.out.println(System.getProperty("user.dir"));
//             String path = System.getProperty("user.dir") + "\\src\\main\\webapp\\Images\\"+fileName;
//             File file = new File(path);
//             Files.copy(is, Paths.get(path), StandardCopyOption.REPLACE_EXISTING);
//             filePaths += path + ";";
//         }
//       }
//	   rentalData.setEmail((String)session.getAttribute("user"));
//	   rentalData.setPhoto(filePaths);
////	   rentalDataRepo.save(rentalData);
//	   session.setAttribute("message", "Successfully Registered...");
////	   redirectAttr.addFlashAttribute("rentalData", rentalData);
//	   List<NameValuePair> params = new ArrayList<NameValuePair>(1);
//	   params.add(new BasicNameValuePair("rentalData", new Gson().toJson(rentalData)));
//	   httppost.setEntity(new UrlEncodedFormEntity(params, "UTF-8"));
//	   System.out.println(httppost.getParams());
//	   HttpResponse response = httpClient.execute(httppost);
//	   HttpEntity entity = response.getEntity();
//	   if (entity != null) {
//	       try (InputStream instream = entity.getContent()) {
//	    	   System.out.println(instream.read());
//	          System.out.println(instream);
//	       }
//	   }
//	 
////	   view.setViewName("PostRegister");
////	    return view;
////	   return new RedirectView("http://localhost:8081/redirect");
//	}
//	@PostMapping(value="post/sell", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
//	public ModelAndView sellProperty(RentalData rentalData, @RequestParam("flPhoto")MultipartFile[] pictures, HttpSession session) throws IOException
//	{
//	   ModelAndView view = new ModelAndView();
//	   InputStream is = null;
//	   String filePaths = "";
//	   List extensions = Stream.of(".mp4",".jpg",".png",".jpeg",".mov",".wmv",".flv",".avi",".avchd",".webm",".mkv",".dpi",".ppi",".gif").collect(Collectors.toList());
//       RandomString random = new RandomString(5);
//       
//       for(MultipartFile filePart: pictures)
//       {
//         if(filePart.getOriginalFilename() != null && (extensions.stream().anyMatch(s -> filePart.getOriginalFilename().endsWith((String) s))) )
//         {
//             String fname = filePart.getOriginalFilename();
//             is = filePart.getInputStream();
//             String fileName = fname.substring(0,fname.indexOf("."))+"_"+rentalData.getName()+random.nextString()+fname.substring(fname.indexOf(".")); 
//             System.out.println(System.getProperty("user.dir"));
//             String path = System.getProperty("user.dir") + "\\src\\main\\webapp\\Images\\"+fileName;
//             File file = new File(path);
//             Files.copy(is, Paths.get(path), StandardCopyOption.REPLACE_EXISTING);
//             filePaths += path + ";";
//         }
//       }
//	   rentalData.setEmail((String)session.getAttribute("user"));
//	   rentalData.setPhoto(filePaths);
//	   rentalDataRepo.save(rentalData);
//	   session.setAttribute("message", "Successfully Registered...");
//	   view.setViewName("PostRegister");
//	    return view;
//	}
	
	@PostMapping(value="post/rent", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
	public ModelAndView rentProperty(Renting renting, @RequestParam("flPhoto")MultipartFile[] pictures, HttpSession session) throws IOException
	{
	   ModelAndView view = new ModelAndView();
	   InputStream is = null;
	   String filePaths = "";
	   List extensions = Stream.of(".mp4",".jpg",".png",".jpeg",".mov",".wmv",".flv",".avi",".avchd",".webm",".mkv",".dpi",".ppi",".gif").collect(Collectors.toList());
       RandomString random = new RandomString(5);
       
       for(MultipartFile filePart: pictures)
       {
         if(filePart.getOriginalFilename() != null && (extensions.stream().anyMatch(s -> filePart.getOriginalFilename().endsWith((String) s))) )
         {
             String fname = filePart.getOriginalFilename();
             is = filePart.getInputStream();
             String fileName = fname.substring(0,fname.indexOf("."))+"_"+renting.getName()+random.nextString()+fname.substring(fname.indexOf(".")); 
             System.out.println(System.getProperty("user.dir"));
             String path = System.getProperty("user.dir") + "\\src\\main\\webapp\\Images\\"+fileName;
             File file = new File(path);
             Files.copy(is, Paths.get(path), StandardCopyOption.REPLACE_EXISTING);
             filePaths += path + ";";
         }
       }
	   renting.setEmail((String)session.getAttribute("user"));
	   renting.setPhoto(filePaths);
	   rentingRepo.save(renting);
	   session.setAttribute("message", "Successfully Registered...");
	   view.setViewName("PostRegister");
	    return view;
	}
}
