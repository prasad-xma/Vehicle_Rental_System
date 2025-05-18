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
<title>Insert title here</title>
</head>
<body style="display: flex; align-items: center; justify-content: center; min-height: 100vh;">
<div class="form add-form" style="width: 600px;">
<form action="../AddManagerServlet" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" name="password" id="exampleInputPassword1">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Address</label>
    <input type="text" class="form-control" name="address" id="exampleInputPassword1">
  </div>
  <div class="mb-3">
    <label for="exampleInputfirst_name" class="form-label">first_name</label>
    <input type="text" class="form-control" name="first_name" id="exampleInputfirst_name">
  </div>
   <div class="mb-3">
    <label for="exampleInputlast_name" class="form-label">last_name</label>
    <input type="text" class="form-control" name="last_name" id="exampleInputlast_name">
  </div>
   
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
<form action="ManagerDetailsServlet" method="post">
	<button type="submit" class="btn btn-danger" style="margin-top: 10px;">Cancel</button>
</form>
</div>
</body>
</html>