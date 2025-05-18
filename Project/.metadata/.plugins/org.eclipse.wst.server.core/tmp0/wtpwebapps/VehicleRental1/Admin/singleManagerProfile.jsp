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
	<body>
	<c:set var = "mng" value="${manager}"/>

<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-header bg-primary text-white">
            <h5 class="card-title mb-0">Manager Details</h5>
        </div>
        <div class="card-body">
            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>User ID:</strong>
                    <p>${mng.userID}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Email address:</strong>
                    <p>${mng.email}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Password:</strong>
                    <p>${mng.password}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Address:</strong>
                    <p>${mng.address}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>First Name:</strong>
                    <p>${mng.first_name}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Last Name:</strong>
                    <p>${mng.last_name}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>User Type:</strong>
                    <p>${mng.utype}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Status:</strong>
                    <p>${mng.status}</p>
                </div>
            </div>
        </div>
    </div>
</div>
  
<div class="update-btn-cont">
	<form action="Admin/managerUpdate.jsp" method="post"> 
		<input type="hidden" name="email" value="${mng.email}">
		<input type="hidden" name="password" value="${mng.password}">
		<input type="hidden" name="address" value="${mng.address}">
		<input type="hidden" name="first_name" value="${mng.first_name}">
		<input type="hidden" name="last_name" value="${mng.last_name}">
		<input type="hidden" name="utype" value="${mng.utype}">
		<input type="hidden" name="status" value="${mng.status}">
		
		<input type="submit" value="Edit Profile" class="btn btn-success">
	</form>
	<div>
		<a href="Admin/AdminDash.jsp" class="btn btn-primary allCus-btn">All Customers</a>
	</div>
</div>

</body>
</html>