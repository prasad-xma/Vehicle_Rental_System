<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" href="./CSS/style.css">

</head>
<body>

    <div class="container">
<h1 class="form-title">Registration Form</h1>

<form method="post" action="../addVehicle">
<div class="main-user-info">


<div class="user-input-box">
  <label for="Description">Description</label>
  <input type="text" id="Description" name="description" >

</div>

<div class="user-input-box">
  <label for="RegistrationNo">RegistrationNo</label>
  <input type="text" id="RegistrationNo" name="registrationNo" >

</div>

<div class="user-input-box">
  <label for="AMT">AMT</label>
  <select name="amt" id="AMT"  >
    <option value="auto">Auto</option>
    <option value="manual">Manual</option>
    </select>
</div>

<div class="user-input-box">
  <label for="Added_Date" >Added_Date</label>
  <input type="date" id="Added_Date" name="added_date">

</div>

<div class="user-input-box">
  <label for="CatId">CatId</label>
  <input type="text" id="CatId" name="catid" >

</div>


<div class="user-input-box">
  <label for="Ftype">Ftype</label>
  <select id="Ftype" name="ftype" >
    <option value="P">Petrol</option>
    <option value="D">Diesel</option>
    </select>

</div>


<div class="user-input-box">
  <label for="Passengers">Passengers</label>
  <input type="text" id="Passengers" name="passengers">

</div>

<div class="user-input-box">
  <label for="RentalPrice">RentalPrice</label>
  <input type="text" id="RentalPrice" name="rentalprice">

</div>

<div class="user-input-box">
  <label for="Image">Image</label>
  <input type="text" id="Image" name="image" >

</div>

<div class="user-input-box">
 <label for="Rating">Rating</label>
  <input type="text" id="Rating" name="rating" > 
 
</div>



<div class="user-input-box">
	<label for="VoID">VoID</label>
  <input type="text" id="VoID" name="voId" >
  
</div>





<div class="user-input-box">
	<label for="TradeName">TradeName</label>
  <input type="text" id="TradeName" name="tradeName" >
  
</div>

<div class="user-input-box">
	<label for="Brand">Brand</label>
  <input type="text" id="Brand" name="brand">
  
</div>

<div class="form-submit-btn">
<input type="submit" name="submit" value="Submit">
</div>


</div>
</form>

</div>


</body>
</html>