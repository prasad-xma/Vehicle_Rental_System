<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    h1 {
        text-align: left;
        margin-left: 10px;
        color: #333;
    }

    fieldset {
        background-color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 600px;
        margin: 20px auto;
        border: 1px solid #ddd;
        width: 100%;
    }

    .form-floating {
        margin-bottom: 15px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #333;
    }

    input[type="text"], input[type="hidden"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[disabled] {
        background-color: #f8f8f8;
        border: 1px solid #ddd;
    }

    input[type="submit"], button[type="submit"] {
        background-color: #007bff;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 10px;
    }

    input[type="submit"]:hover, button[type="submit"]:hover {
        background-color: #0056b3;
    }

    form {
        margin-top: 20px;
    }

    button {
        margin-left: 10px;
    }
</style>




</head>
<body>
<h1>My profile</h1>

<c:set var = "own" value="${owner}"/>
<fieldset disabled>

<div class="form-floating">
  <label for="Vid">Vehicle ID</label>
  <input type="text" id="Vid" name="vid" value="${own.vid}">
</div>



  
  
 <div class="form-floating">
  <label for="Description">Description</label>
  <input type="text" id="Description" name="description" value="${own.description}">

</div>

<div class="form-floating">
  <label for="RegistrationNo">RegistrationNo</label>
  <input type="text" id="RegistrationNo" name="registrationNo" value="${own.registrationNo}">

</div>

<div class="form-floating">
  <label for="AMT">AMT</label>
  <input type="text" id="AMT" name="amt" value="${own.amt}">

</div>



<div class="form-floating">
  <label for="Added_Date">Added_Date</label>
  <input type="text" id="Added_Date" name="added_date" value="${own.added_date}">

</div>

<div class="form-floating">
  <label for="CatId">CatId</label>
  <input type="text" id="CatId" name="catid" value="${own.catid}">

</div>

<div class="form-floating">
  <label for="Ftype">Ftype</label>
  <input type="text" id="Ftype" name="ftype" value="${own.ftype}">

</div>

<div class="form-floating">
  <label for="Passengers">Passengers</label>
  <input type="text" id="Passengers" name="passengers" value="${own.passengers}">

</div>

<div class="form-floating">
  <label for="RentalPrice">RentalPrice</label>
  <input type="text" id="RentalPrice" name="rentalprice" value="${own.rentalprice}">

</div>

<div class="form-floating">
  <label for="Image">Image</label>
  <input type="text" id="Image" name="image" value="${own.image}">

</div>

<div class="form-floating">
 <label for="Rating">Rating</label>
  <input type="text" id="Rating" name="rating" value="${own.rating}">
 
</div>

<div class="form-floating">
<label for="Status">Status</label>
  <input type="text" id="Status" name="status" value="${own.status}">
  
</div>

<div class="form-floating">
	<label for="VoID">VoID</label>
  <input type="text" id="VoID" name="voId" value="${own.voId}">
  
</div>

<div class="form-floating">
	<label for="TradeName">TradeName</label>
  <input type="text" id="TradeName" name="tradeName" value="${own.tradeName}">
  
</div>

<div class="form-floating">
	<label for="Brand">Brand</label>
  <input type="text" id="Brand" name="brand" value="${own.brand}">
  
</div>

  
  
</div>

</fieldset>


<form action="vOwner/update.jsp" method="post">

<input type="hidden" name="vid" value="${own.vid}">
<input type="hidden" name="description" value="${own.description}">
<input type="hidden" name="registrationNo" value="${own.registrationNo}">
<input type="hidden" name="amt" value="${own.amt}">
<input type="hidden" name="added_date" value="${own.added_date}">
<input type="hidden" name="catid" value="${own.catid}">
<input type="hidden" name="ftype" value="${own.ftype}">
<input type="hidden" name="passengers" value="${own.passengers}">
<input type="hidden" name="rentalprice" value="${own.rentalprice}">
<input type="hidden" name="image" value="${own.image}">
<input type="hidden" name="rating" value="${own.rating}">
<input type="hidden" name="status" value="${own.status}">
<input type="hidden" name="voId" value="${own.voId}">
<input type="hidden" name="tradeName" value="${own.tradeName}">
<input type="hidden" name="brand" value="${own.brand}">



<input type="submit" value="Update">

<a href="vOwner/login.jsp">
<button type="button" class="form-floating">My vehicles</button>
</a>


</form>










</body>
</html>