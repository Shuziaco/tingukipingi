package com.props.godshivam.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.props.godshivam.CommonAppData;

public class DataDao 
{
	 public static Connection getConnection()
    {
        Connection con=null;
        try
        {
           Class.forName("com.mysql.jdbc.Driver"); 
           con=DriverManager.getConnection("jdbc:mysql://localhost/db","root", "server");
        }
        catch(Exception e)
        {
            System.out.println("Exception occurred: "+e);
        }
         return con;
    }
	    public static int insert(CommonAppData r)
	    {
	        int  i=0;
	        try
	        {
	        Connection con=getConnection();
	        PreparedStatement ps=con.prepareStatement("insert into RentalMembers values(?,?,?,?,?)");
	        ps.setInt(1,0);
	        ps.setString(2, r.getName());
	        ps.setString(3, r.getEmail());
	        ps.setString(4, r.getPassword());
	        ps.setString(5, r.getMobileNo());
	        i=ps.executeUpdate();
	        }
	        catch(Exception e)
	        {
	            System.out.println("Exception occurred: "+e);
	        }
	        return i;
	        
	    }
	    public static int update(String mobile, String password)
	    {
	        int i = 0;
	        try
	        {
	            Connection con = getConnection();
	            PreparedStatement ps = con.prepareStatement("Update RentalMembers set Password = ? where MobileNo = ?");
	            ps.setString(1, password);
	            ps.setString(2, mobile);
	            i = ps.executeUpdate();
	        }
	        catch(SQLException ex)
	        {
	            System.out.println("Exception occurred while updatng the data: "+ex);
	        }
	        catch(Exception ex)
	        {
	            System.out.println("Exception occurred while updatng the data: "+ex);
	        }
	        return i;
	    }
	    public static List<CommonAppData> read()
	    {
	        List<CommonAppData> usersList=new ArrayList();      
	        try
	        {
	            Connection con=getConnection();
	            PreparedStatement ps=con.prepareStatement("Select *from RentalMembers");
	            ResultSet rs=ps.executeQuery();
	            while(rs.next())
	            {
	                CommonAppData r=new CommonAppData();
	                r.setName(rs.getString("Name"));
	                r.setEmail(rs.getString("Email"));
	                r.setPassword(rs.getString("Password"));  
	                r.setMobileNo(rs.getString("MobileNo"));
	                usersList.add(r);
	            }
	        }
	        catch(SQLException e)
	        {
	            System.out.println("Sql Exception occurred: "+e);
	        }
	        catch(Exception e)
	        {
	            System.out.println("Exception occurred: "+e);
	        }
	        return usersList;
	    }
	    public static CommonAppData getUserByEmail(String email)
	    {
	        CommonAppData user = new CommonAppData();      
	        try
	        {
	            Connection con=getConnection();
	            PreparedStatement ps=con.prepareStatement("Select *from RentalMembers where email=?");
	            ps.setString(1, email);
	            ResultSet rs=ps.executeQuery();
	            if(rs.next())
	            {
	                user.setName(rs.getString("Name"));
	                user.setEmail(rs.getString("Email"));
	                user.setPassword(rs.getString("Password"));  
	                user.setMobileNo(rs.getString("MobileNo"));
	            }
	        }
	        catch(SQLException e)
	        {
	            System.out.println("Sql Exception occurred: "+e);
	        }
	        catch(Exception e)
	        {
	            System.out.println("Exception occurred: "+e);
	        }
	        return user;
	    }
	    public static boolean isStringLowercase(String str)
	    {
	        char []charArray = str.toCharArray();
	        int count = 0;
	        for(int i=0;i<charArray.length; i++)
	        {
	            if(!Character.isLowerCase(charArray[i]))
	                count++;
	        }
	        if(count > 0)
	         return true;
	        else 
	            return false;
	    }
	    public static boolean isStringDigit(String str)
	    {
	        char []charArray = str.toCharArray();
	        int count = 0;
	        for(int i=0;i<charArray.length; i++)
	        {
	            if(!Character.isDigit(charArray[i]))
	                count++;
	        }
	        if(count > 0)
	         return true;
	        else 
	         return false;
	    }
	    public static boolean isStringUppercase(String str)
	    {
	        char []charArray = str.toCharArray();
	        int  count = 0;
	        for(int i=0;i<charArray.length; i++)
	        {
	            if(!Character.isUpperCase(charArray[i]))
	                count ++;
	        }
	        if(count > 0)
	         return true;
	        else
	         return false;
	    }
	   
	    public static boolean isStringSpecialChar(String str)
	    {
	        char [] charArray = str.toCharArray();
	        int count = 0;
	        for(int i=0; i<charArray.length; i++)
	        {
	            if(!Character.isLetterOrDigit(charArray[i]) && !Character.isSpaceChar(charArray[i]))
	                count ++;
	        }
	        if(count > 0)
	            return true;
	        else 
	            return false;
	    }
	    public static boolean checkPassword(String str)
	    {
	        boolean flag = false;
	        if(isStringUppercase(str) && isStringLowercase(str) && isStringSpecialChar(str) && str.length()>=8)
	        {
	            flag=true;
	        }
	        return flag;
	    }
}