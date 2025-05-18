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
<body>

<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Customer ID</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      <th scope="col">Address</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Type</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="own" items="${owner}">
    	<tr>
    		<td>${own.userID}</td>
    		<td>${own.email}</td>
    		<td>${own.password}</td>
    		<td>${own.address}</td>
    		<td>${own.first_name}</td>
    		<td>${own.last_name}</td>
    		<td>${own.utype}</td>
    		<td>${own.status}</td>
    		
    		<td>
    		
    			<form action="SingleOwnerProfileServlet" method="post">
    				<input type="hidden" name="email" value="${own.email}">
    				<button type="submit" class="btn btn-success">View Details</button>
    			</form>  
    		</td>
    		
    		<td>
    			<form action="../DeleteVehicleOwnerServlet" method="post">
    				<input type="hidden" name="email" value="${own.email}">
    				<button type="submit" class="btn btn-outline-danger">Delete</button>
    			</form>
    		</td>
    	</tr>
    </c:forEach>
  </tbody>
</table>
<a href="AdminDash.jsp" class="btn btn-warning">Back to DashBoard</a>

</body>
</html>