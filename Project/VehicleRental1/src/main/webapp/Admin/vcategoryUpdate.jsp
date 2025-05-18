<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Category Update</title>
</head>
<body>
<form action="UpdateVcatServlet" method="post">
  <div class="mb-3">
    <input type="hidden" class="form-control" id="exampleInputEmail1" name="catID" value="${param.catID}" >
  </div>
    <div class="mb-3">
	    <label for="exampleInputaddress" class="form-label">Category Name</label>
	    <input type="text" class="form-control" id="exampleInputaddress" name="catName" value="${param.catName}">
	 </div>
	 
	<input type="submit" value="Update">
</form>
</body>
</html>