<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>









</head>
<body>


<form action = "../login" method="post">


<h1>Login to my vehicle</h1>



<div class="form-floating">
  <label for="RegistrationNo">RegistrationNo</label>
  <input type="text" id="RegistrationNo" name="registrationNo" value="${own.registrationNo}">

</div>





<div class="form-floating">
	<label for="VoID">VoID</label>
  <input type="text" id="VoID" name="voId" value="${own.voId}">
  
</div>




<input type="submit" name="submit" value="Login">



</form>

</body>
</html>