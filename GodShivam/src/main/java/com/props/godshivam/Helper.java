package com.props.godshivam;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Helper
{
	 static int success;
	    public static String otp = "3357";
	    
	   public static String generateOTP() 
	   {
	        int randomPin   =(int)(Math.random()*9000)+1000;
	        String otp  =String.valueOf(randomPin);
	        return otp;
	   }
	   public static String encode(String s)
	   {
	         try 
	         {  
	            String encodeURL=URLEncoder.encode( s, "UTF-8" );  
	            return encodeURL;  
	         }
	         catch (UnsupportedEncodingException e) 
	         {  
	            return "Issue while encoding" +e.getMessage();  
	         }  
	   }
	   public static String SendOTP(String mobile)
	   {
	        otp = Helper.generateOTP();
	        RandomString random = new RandomString();
	        String authKey = random.nextString();
	        String apikey = "uO/WO8QVn9Y-qSzaZIV5J6X0yVyaREO4QqpwPUGpD8";
	        String senderId = "ABCDEF";
	        String route = "default";
	        String message = "Your OTP for EasyGo is "+otp;
	        URLConnection urlCon = null;
	        URL url = null;
	        BufferedReader reader = null;
	        String encoded_message = Helper.encode(message);
	        String mainUrl="https://api.textlocal.in/send?";
	        StringBuilder sbPostData= new StringBuilder(mainUrl);
	        sbPostData.append("apiKey="+apikey);
	        sbPostData.append("&numbers="+mobile);
	        sbPostData.append("&message="+encoded_message);
	        mainUrl = sbPostData.toString();
	        try
	        {
	            url = new URL(mainUrl);
	            urlCon = url.openConnection();
	           // urlCon.connect();
	           urlCon.setDoOutput(true);
	            reader = new BufferedReader(new InputStreamReader(urlCon.getInputStream()));
	            StringBuilder response = new StringBuilder();
	            String line;
	            while ((line = reader.readLine()) != null)
	            {
	                //print response
	                response.append(line).append("\n");               
	            }
	            System.out.println(response.toString());
	            //finally close connection
	        reader.close();
	            return "OTP sent successfully.";
	        }
	        catch(Exception e)
	        {
	            e.printStackTrace();
	        }
	        return "Error while sending OTP!";
	   }
	   
	   public static boolean isVideoFile(String file)
	   {
	        List extensions = Stream.of(".mp4", ".mov", ".wmv", ".flv", ".avi", ".avchd", ".webm", ".mkv", ".gif").collect(Collectors.toList());
	        return (file != null && (extensions.stream().anyMatch(s -> file.endsWith((String) s))) );       
	   }
}