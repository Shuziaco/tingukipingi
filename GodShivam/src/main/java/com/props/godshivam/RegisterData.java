package com.props.godshivam;

public class RegisterData 
{
	 private int id;

	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }
	    private String name;
	    private String email;

	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }
	    private String address;
	    private String city;
	    private String propertyStatus;
	    private float price;
	    private String area;
	    private String areaUnit;
	    
	    public String getAreaUnit() {
	        return areaUnit;
	    }

	    public void setAreaUnit(String areaUnit) {
	        this.areaUnit = areaUnit;
	    }
	    private String furnishedType;

	    public String getCity() {
	        return city;
	    }

	    public void setCity(String city) {
	        this.city = city;
	    }

	    public String getPropertyStatus() {
	        return propertyStatus;
	    }

	    public void setPropertyStatus(String propertyStatus) {
	        this.propertyStatus = propertyStatus;
	    }

	    public float getPrice() {
	        return price;
	    }

	    public void setPrice(float price) {
	        this.price = price;
	    }

	    public String getArea() {
	        return area;
	    }

	    public void setArea(String area) {
	        this.area = area;
	    }

	    public String getFurnishedType() {
	        return furnishedType;
	    }

	    public void setFurnishedType(String furnishedType) {
	        this.furnishedType = furnishedType;
	    }
	    private int BHK;
	    private String contact;
	    private String photoPath;

	    public String getPhotoPath() {
	        return photoPath;
	    }

	    public void setPhotoPath(String photoPath) {
	        this.photoPath = photoPath;
	    }
	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public String getAddress() {
	        return address;
	    }

	    public void setAddress(String address) {
	        this.address = address;
	    }

	    public int getBHK() {
	        return BHK;
	    }

	    public void setBHK(int BHK) {
	        this.BHK = BHK;
	    }

	    public String getContact() {
	        return contact;
	    }

	    public void setContact(String contact) {
	        this.contact = contact;
	    }
	    
	    public boolean comparer(RegisterData rg)
	    {
	        boolean flag = true;
	        
	        if(!this.name.equals(rg.name) || !this.address.equals(rg.address) || !this.city.equals(rg.city) || this.BHK != rg.BHK || !this.propertyStatus.equals(rg.propertyStatus) || this.price != rg.price
	                || !this.area.equals(rg.area) || !this.areaUnit.equals(rg.areaUnit) || !this.contact.equals(rg.contact) || !this.photoPath.equals(rg.photoPath) || !this.furnishedType.equals(rg.furnishedType))
	        {
	            flag = false;
	        }
	        return flag;
	    }
}