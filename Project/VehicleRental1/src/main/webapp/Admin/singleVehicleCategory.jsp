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
<c:set var = "svc" value="${category}"/>

<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-header bg-primary text-white">
            <h5 class="card-title mb-0">Category Details</h5>
        </div>
        <div class="card-body">
            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Category ID:</strong>
                    <p>${svc.catID}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Category Name:</strong>
                    <p>${svc.catName}</p>
                </div>
            </div>
            
        </div>
    </div>
</div>
  
  <div class="update-btn-cont">
	<form action="vcategoryUpdate.jsp" method="post"> 
		<input type="hidden" name="catID" value="${svc.catID}">
		<input type="hidden" name="catName" value="${svc.catName}">
		
		<input type="submit" value="Edit Profile" class="btn btn-success">
	</form>
	<div>
		<a href="AdminDash.jsp" class="btn btn-primary allCus-btn">All Customers</a>
	</div>
</div>
</body>
</html>