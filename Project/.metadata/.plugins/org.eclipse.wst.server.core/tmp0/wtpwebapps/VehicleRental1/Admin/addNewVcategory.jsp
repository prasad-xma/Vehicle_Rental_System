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
<title>Add Vehicle Category</title>
</head>
<body>
<form action="../AddVcategoryServlet" method="post">
	<label for="exampleInputVname" class="form-label">Category Name</label>
    <input type="text" class="form-control" name="catName" id="exampleInputVname">
    
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<form action="VcategoryDetailsServlet" method="post">
	<button type="submit" class="btn btn-danger" style="margin-top: 10px;">Cancel</button>
</form>
</body>
</html>