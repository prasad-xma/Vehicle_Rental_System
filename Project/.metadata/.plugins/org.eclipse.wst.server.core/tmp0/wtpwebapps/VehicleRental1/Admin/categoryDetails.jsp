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
<title>Category Details</title>
</head>
<body>
	<a href="Admin/addNewVcategory.jsp" class="btn btn-primary">Add New Vehicle Category</a>
	<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Category ID</th>
      <th scope="col">Category name</th>
      
    </tr>
  </thead>
  <tbody>
    <c:forEach var="vc" items="${category}">
    	<tr>
    		<td>${vc.catID}</td>
    		<td>${vc.catName}</td>		
    		<td> 
    		
    			<form action="SingleVcategoryDetails" method="post">
    				<input type="hidden" name="catID" value="${vc.catID}">
    				<button type="submit" class="btn btn-success">View Details</button>
    			</form>  
    		</td>
    		
    		<td>
    			<form action="#" method="post">
    				<input type="hidden" name="catID" value="${vc.catID}">
    				<button type="submit" class="btn btn-outline-danger">Delete</button>
    			</form>
    		</td>
    	</tr>
    </c:forEach>
  </tbody>
</table>

</body>
</html>