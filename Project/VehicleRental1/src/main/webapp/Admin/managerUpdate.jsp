<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/AdminStyle.css">
    <link rel="stylesheet" href="./css/formStyle.css">
<title>Update Manager Details</title>
</head>
<body>
<div class="form-cont">
	<form action="../ManagerUpdateServlet" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="email" value="${param.email}" >
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="text" class="form-control" name="password" value="${param.password}" id="exampleInputPassword1">
  </div>
  	<div class="mb-3">
	    <label for="exampleInputaddress" class="form-label">Address:</label>
	    <input type="text" class="form-control" id="exampleInputaddress" name="address" value="${param.address}">
	 </div>
	<div class="mb-3">
	   <label for="exampleInputfirst_name" class="form-label">First Name:</label>
	   <input type="text" class="form-control" id="exampleInputfirst_name" name="first_name" value="${param.first_name}">
	</div>
	<div class="mb-3">
	   <label for="exampleInputlast_name" class="form-label">Last Name:</label>
	   <input type="text" class="form-control" id="exampleInputlast_name" name="last_name" value="${param.last_name}">
	</div>
	<div class="mb-3">
	   <label for="exampleInpututype" class="form-label">User Type:</label>
	   <input type="text" class="form-control" id="exampleInpututype" name="utype" value="${param.utype}">
	</div>
	<div class="mb-3">
	   <label for="exampleInputstatus" class="form-label">Status:</label>
	   <input type="text" class="form-control" id="exampleInputstatus" name="status" value="${param.status}">
	</div>
	<input type="submit" value="Update" class="btn btn-warning">
</form>
<form action="ManagerDetailsServlet" method="post">
	<button type="submit" class="btn btn-danger" style="margin-top: 10px;">Cancel</button>
</form>
	</div>
</body>
</html>