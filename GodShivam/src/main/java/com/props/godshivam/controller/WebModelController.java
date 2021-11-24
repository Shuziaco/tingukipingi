package com.props.godshivam.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.props.godshivam.RentalData;
import com.props.godshivam.RentalDataRepo;
import com.props.godshivam.RentalMembers;
import com.props.godshivam.RentalMembersRepo;


@Controller
public class WebModelController 
{
	@Autowired
	private RentalMembersRepo rentalMembersRepo;
	@Autowired
	private RentalDataRepo rentalDataRepo;

	@RequestMapping("/")
	public String home()
	{
		System.out.println("home page requested.");
		return "index";
	}
	@RequestMapping("/our-partner")
	public String bePartner()
	{
		System.out.println("home page requested.");
		return "partner";
	}
	@RequestMapping("/header")
	public String header()
	{
		System.out.println("Header header.");
		return "Header";
	}
	@RequestMapping("model-error")
	public String errorMapping()
	{
		return "Error";
	}
	@GetMapping("Signin")
//	@GetMapping("login")
	public String redirectSignIn()
	{
		return "SignIn";
	}
	
	@GetMapping("blog")
	public String redirectBlog()
	{
		return "Blog";
	}
	
//	@PostMapping("logging")
//	public String redirectValidateLogin()
//	{
//		return "verifyLogin";
//	}
	
	@GetMapping("loggedIn")
	public String redirectLogin()
	{
		return "Login";
	}
	
	@GetMapping("otp-verification")
	public String redirectVerifyOTP()
	{
		return "verifyOTP";
	}
	
	@GetMapping("resend-otp")
	public String redirectResendOTP()
	{
		return "ResendOTP";
	}
	
	@GetMapping("googs")
	public String googleLogin()
	{
		return "googleLogin";
	}
	
	@GetMapping("logging-out")
	public String redirectLogout()
	{
		return "Logout";
	}
	@GetMapping("profile")
	public String redirectProfile(HttpSession session)
	{
		String user = (String)session.getAttribute("user");
		RentalMembers rentalMember = (RentalMembers)rentalMembersRepo.findByEmail(user);
		List<RentalData> members = rentalDataRepo.findAllByEmail(user);
		session.setAttribute("members", members);
		session.setAttribute("rentalMember", rentalMember);
	    RentalMembers usr = (RentalMembers)session.getAttribute("rentalMember");
        List<RentalData> rdUsers = (List<RentalData>)session.getAttribute("members");
        System.out.println(usr.getEmail());
        for(RentalData rd : rdUsers)
        {
        	System.out.println(rd.getAddress());
        }
		return "Profile";
	}
//	@PostMapping("register")
//	public String redirectSignup()
//	{
//		return "Save";
//	}
	
	@GetMapping("reset-password")
	public String redirectForgotPassword()
	{
		return "ForgotPassword";
	}
	
	@GetMapping("terms-service")
	public String redirectTermsOfService()
	{
		return "PrivacyPolicy";
	}
	@GetMapping("footer")
	public String Foot()
	{
		return "Footer";
	}
}
