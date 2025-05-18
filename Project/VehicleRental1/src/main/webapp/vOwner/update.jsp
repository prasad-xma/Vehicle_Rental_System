<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        max-width: 600px;
        width: 100%;
        margin-bottom: 20px;
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
        background-color: #f9f9f9;
    }

    input[type="submit"], button[type="submit"] {
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 15px;
    }

    input[type="submit"]:hover, button[type="submit"]:hover {
        background-color: #0056b3;
    }

    button {
        margin-left: 10px;
        padding: 10px 20px;
    }
</style>




</head>
<body>


<form method="post" action="../updateVehicle">


<input type="hidden" id="vid" name="vid" value="${param.vid}">


<div class="form-floating">
  <label for="Description">Description</label>
  <input type="text" id="Description" name="description" value="${param.description}">

</div>

<div class="form-floating">
  <label for="RegistrationNo">RegistrationNo</label>
  <input type="text" id="RegistrationNo" name="registrationNo" value="${param.registrationNo}">

</div>

<div class="form-floating">
  <label for="AMT">AMT</label>
  <input type="text" id="AMT" name="amt" value="${param.amt}">

</div>

<div class="form-floating">
  <label for="Added_Date">Added_Date</label>
  <input type="text" id="Added_Date" name="added_date" value="${param.added_date}">

</div>

<div class="form-floating">
  <label for="CatId">CatId</label>
  <input type="text" id="CatId" name="catid" value="${param.catid}">

</div>

<div class="form-floating">
  <label for="Ftype">Ftype</label>
  <input type="text" id="Ftype" name="ftype" value="${param.ftype}">

</div>

<div class="form-floating">
  <label for="Passengers">Passengers</label>
  <input type="text" id="Passengers" name="passengers" value="${param.passengers}">

</div>

<div class="form-floating">
  <label for="RentalPrice">RentalPrice</label>
  <input type="text" id="RentalPrice" name="rentalprice" value="${param.rentalprice}">

</div>

<div class="form-floating">
  <label for="Image">Image</label>
  <input type="text" id="Image" name="image" value="${param.image}">

</div>

<div class="form-floating">
 <label for="Rating">Rating</label>
  <input type="text" id="Rating" name="rating" value="${param.rating}">
 
</div>



<div class="form-floating">
	<label for="VoID">VoID</label>
  <input type="text" id="VoID" name="voId" value="${param.voId}">
  
</div>

<div class="form-floating">
<label for="Status">TradeName</label>
  <input type="text" id="Status" name="tradeName" value="${param.tradeName}">
  
</div>

<div class="form-floating">
	<label for="Brand">Brand</label>
  <input type="text" id="Brand" name="brand" value="${param.brand}">
  
</div>



<input type="submit" name="submit" value="confirm" onclick="confirmSubmission()">

<script>
  function confirmSubmission() {
    alert("Are you sure you want to confirm?");
    
  }
</script>





</form>







</body>
</html>