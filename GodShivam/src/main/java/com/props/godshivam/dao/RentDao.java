package com.props.godshivam.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.props.godshivam.Renting;

public class RentDao 
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
	    
	    public static int insert(Renting r )
	    {
	        int i = 0;
	        try
	        {
	            Connection con = getConnection();
	            PreparedStatement ps = con.prepareStatement("Insert into Renting(Name,City,Address,BHK,BuildingType,Parking,Rent,Floor,TotalFloor,Contact,Photo,FurnishType) values(?,?,?,?,?,?,?,?,?,?,?,?)");
	            ps.setString(1, r.getName());
	            ps.setString(2, r.getCity());
	            ps.setString(3, r.getAddress());
	            ps.setInt(4, r.getBhk());
	            ps.setString(5, r.getBuildingType());
	            ps.setBoolean(6, r.getParking());
	            ps.setFloat(7, r.getRent());
	            ps.setInt(8, r.getFloor());
	            ps.setFloat(9, r.getTotalFloor());          
	            ps.setString(10, r.getContact());
	            ps.setString(11, r.getPhoto());
	            ps.setString(12, r.getFurnishType());
	            i = ps.executeUpdate();
	            System.out.println("I = " + i);
	        }
	        catch(Exception ex)
	        {
	            System.out.println("Exception occurred: "+ex);
	        }
	        return i;
	    }
	    public static List<Renting> read()
	    {
	        List<Renting> usersList=new ArrayList<>();      
	        try
	        {
	            Connection con=getConnection();
	            PreparedStatement ps=con.prepareStatement("Select *from Renting");
	            ResultSet rs=ps.executeQuery();
	            while(rs.next())
	            {
	                Renting r=new Renting();
	                r.setName(rs.getString("Name"));
	                r.setAddress(rs.getString("Address"));
	                r.setCity(rs.getString("City"));
	                r.setBuildingType(rs.getString("BuildingType"));
	                r.setParking(rs.getBoolean("Parking"));
	                r.setRent(rs.getFloat("Rent"));
	                r.setFloor(rs.getInt("Floor"));
	                r.setTotalFloor(rs.getInt("TotalFloor"));
	                r.setBhk(rs.getInt("BHK"));  
	                r.setContact(rs.getString("Contact"));
	                r.setFurnishType(rs.getString("FurnishType"));
	                r.setPhoto(rs.getString("Photo"));
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
}