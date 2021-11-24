<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Wait here...</title>
</head>
<body>
 <form id="myRedirectForm" name ="myRedirectForm" action="http://localhost:8081/redirect" method="post" enctype="multipart/form-data">
              
    <input type="text"  name="name" value="${sessionScope.rentalData.getName() }" hidden="true" required>
   
    <input type="text" name="address" value="${sessionScope.rentalData.getAddress() }" hidden="true" required>

    <input type="text" name="city" value="${sessionScope.rentalData.getCity() }" hidden="true" required>
                  
                   
   <input type="text" name="propertyType" value="${sessionScope.rentalData.getPropertyType()}" hidden="true" required>
				        
                   
   <input type="text" name="propertyCategory" value="${sessionScope.rentalData.getPropertyCategory()}" hidden="true" required>
				      			       
                
   <input type="text" name="propertyStatus" value="${sessionScope.rentalData.getPropertyStatus()}" hidden="true" required>
                     
               
   <input type="text" maxlength="2" name="floor" value="${sessionScope.rentalData.getFloor()}" hidden="true" required>

               
   <input type="text" maxlength="2" name="totalFloors" value="${sessionScope.rentalData.getTotalFloors()}" hidden="true" required>
               
   <input type="text" placeholder="Price" name="price" value="${sessionScope.rentalData.getPrice()}" hidden="true" required>
                   
             
   <input type="text" name="area" value="${sessionScope.rentalData.getArea()}" hidden="true" required>
   
   <input type="text" name="areaUnit" value="${sessionScope.rentalData.getAreaUnit()}"  hidden="true" required>
                      
                
   <input type="text" name="bhk" value="${sessionScope.rentalData.getBhk()}" hidden="true" required>
   
   <input type="text" name="email" value="${sessionScope.user }" hidden="true" required>             
   <input type="tel" name="contact" value="${sessionScope.rentalData.getContact()}" hidden="true" required>

              
  <!--  <input type="file" name="flPhoto" value="" autocomplete="off" multiple> -->
  <input type="text" name="photo" value="${sessionScope.rentalData.getPhoto()}" hidden="true" required>
             
  <input type="text" name="furnishType" value="${sessionScope.rentalData.getFurnishType()}" hidden="true" required>
        
   <input type="submit" id="dosomething" value="dosubmit" hidden="true" />
  </form>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script type="text/javascript">

        $(document).ready(function() {
            //document.myRedirectForm.submit();
        	//$('#dosomething').click();
        	$('#myRedirectForm').submit();
        });

    </script>
</body>
</html>