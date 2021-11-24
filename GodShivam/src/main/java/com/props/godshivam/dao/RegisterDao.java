package com.props.godshivam.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.props.godshivam.RegisterData;

public class RegisterDao
{
	 private static Connection getConnection()
	    {
	        Connection con = null;
	        try
	        {
	          Class.forName("com.mysql.jdbc.Driver");
	          con = DriverManager.getConnection("jdbc:mysql://localhost/db", "root", "server");
	        }
	        catch(Exception ex)
	        {
	            System.out.println("Exception occurred: "+ex);
	        }
	        return con;
	    }
	    
	    private static Connection getConnection(String database, String user, String password)
	    {
	        Connection con = null;
	        try
	        {
	          Class.forName("com.mysql.jdbc.Driver");
	          con = DriverManager.getConnection("jdbc:mysql://localhost/"+database, user, password);
	        }
	        catch(Exception ex)
	        {
	            System.out.println("Exception occurred: "+ex);
	        }
	        return con;
	    }
	    public static int insert(RegisterData r)
	    {
	        int i = 0;
	        int id = -1;
	        try
	        {
	            Connection con = getConnection();
	            PreparedStatement ps = con.prepareStatement("Insert into RentalData(Name,Email,City,Address,BHk,PropertyStatus,FurnishType,Area,AreaUnit,Price,Contact,Photo) values(?,?,?,?,?,?,?,?,?,?,?,?);");
	            ps.setString(1, r.getName());
	            ps.setString(2, r.getEmail());
	            ps.setString(3, r.getCity());
	            ps.setString(4, r.getAddress());
	            ps.setInt(5, r.getBHK());
	            ps.setString(6, r.getPropertyStatus());
	            ps.setString(7, r.getFurnishedType());
	            ps.setString(8, r.getArea());
	            ps.setString(9, r.getAreaUnit());
	            ps.setFloat(10, r.getPrice());          
	            ps.setString(11, r.getContact());
	            ps.setString(12, r.getPhotoPath());
	            i = ps.executeUpdate();
	            System.out.println("I = " + i);
	            if(i == 1)
	            {
//	                Transfer(r);
	                List<RegisterData> users = read();
	                for(RegisterData user : users )
	                {
	                    if(user.comparer(r))
	                    {
	                        id = user.getId();
	                    }
	                }               
	            }
	        }
	        catch(Exception ex)
	        {
	            System.out.println("Exception occurred: "+ex);
	        }
	        return id;
	    }
	    public static int Transfer(int id)
	    {
	        int i = 0;
	        try
	        {
	            RegisterData r = getRegisterDataById(id);
	            Connection con = getConnection("world", "root", "server");
	            PreparedStatement ps = con.prepareStatement("Insert into RentalData(Name,Email,City,Address,BHk,PropertyStatus,FurnishType,Area,AreaUnit,Price,Contact,Photo) values(?,?,?,?,?,?,?,?,?,?,?,?)");
	            ps.setString(1, r.getName());
	            ps.setString(2, r.getEmail());
	            ps.setString(3, r.getCity());
	            ps.setString(4, r.getAddress());
	            ps.setInt(5, r.getBHK());
	            ps.setString(6, r.getPropertyStatus());
	            ps.setString(7, r.getFurnishedType());
	            ps.setString(8, r.getArea());
	            ps.setString(9, r.getAreaUnit());
	            ps.setFloat(10, r.getPrice());          
	            ps.setString(11, r.getContact());
	            ps.setString(12, r.getPhotoPath());
	            i = ps.executeUpdate();
	            System.out.println("I = " + i);
	        }
	        catch( Exception ex)
	        {
	            System.out.println("Exception occurred: "+ex);
	        }
	        return i;
	    }
	    public static List<RegisterData> read()
	    {
	        List<RegisterData> usersList=new ArrayList<>();      
	        try
	        {
	            Connection con=getConnection();
	            PreparedStatement ps=con.prepareStatement("Select *from RentalData");
	            ResultSet rs=ps.executeQuery();
	            while(rs.next())
	            {
	                RegisterData r=new RegisterData();
	                r.setId(rs.getInt("ID"));
	                r.setName(rs.getString("Name"));
	                r.setEmail(rs.getString("Email"));
	                r.setAddress(rs.getString("Address"));
	                r.setCity(rs.getString("City"));
	                r.setArea(rs.getString("Area"));
	                r.setAreaUnit(rs.getString("AreaUnit"));
	                r.setPrice(rs.getFloat("Price"));
	                r.setPropertyStatus(rs.getString("PropertyStatus"));
	                r.setFurnishedType(rs.getString("FurnishType"));
	                r.setBHK(Integer.parseInt(rs.getString("BHk")));  
	                r.setContact(rs.getString("Contact"));
	                r.setPhotoPath(rs.getString("Photo"));
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
	    
	     public static RegisterData getRegisterDataById(int id)
	    {      
	        RegisterData r=new RegisterData();
	        try
	        {
	            Connection con=getConnection();
	            PreparedStatement ps=con.prepareStatement("Select *from RentalData where ID = '"+id+"'; ");
	            ResultSet rs=ps.executeQuery();
	            while(rs.next())
	            {
	                r.setId(rs.getInt("ID"));
	                r.setName(rs.getString("Name"));
	                r.setEmail(rs.getString("Email"));
	                r.setAddress(rs.getString("Address"));
	                r.setCity(rs.getString("City"));
	                r.setArea(rs.getString("Area"));
	                r.setAreaUnit(rs.getString("AreaUnit"));
	                r.setPropertyStatus(rs.getString("PropertyStatus"));
	                r.setFurnishedType(rs.getString("FurnishType"));
	                r.setBHK(Integer.parseInt(rs.getString("BHk")));  
	                r.setContact(rs.getString("Contact"));
	                r.setPhotoPath(rs.getString("Photo"));
	                r.setPrice(rs.getFloat("Price"));
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
	        return r;
	    }
	     public static List<RegisterData> getRegisterDataByEmail(String email)
	    {    
	        List<RegisterData> users = new ArrayList<>();
	        try
	        {
	            Connection con=getConnection();
	            PreparedStatement ps=con.prepareStatement("Select *from RentalData where Email = '"+email+"'; ");
	            ResultSet rs=ps.executeQuery();
	            while(rs.next())
	            {
	                RegisterData r=new RegisterData();
	                r.setId(rs.getInt("ID"));
	                r.setName(rs.getString("Name"));
	                r.setEmail(rs.getString("Email"));
	                r.setAddress(rs.getString("Address"));
	                r.setCity(rs.getString("City"));
	                r.setArea(rs.getString("Area"));
	                r.setAreaUnit(rs.getString("AreaUnit"));
	                r.setPropertyStatus(rs.getString("PropertyStatus"));
	                r.setFurnishedType(rs.getString("FurnishType"));
	                r.setBHK(Integer.parseInt(rs.getString("BHk")));  
	                r.setContact(rs.getString("Contact"));
	                r.setPhotoPath(rs.getString("Photo"));
	                r.setPrice(rs.getFloat("Price"));
	                users.add(r);
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
	        return users;
	    }
}