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
<title>Customer Data</title>
</head>
<body>
<c:set var = "cus" value="${customer}"/>

<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-header bg-primary text-white">
            <h5 class="card-title mb-0">Customer Details</h5>
        </div>
        <div class="card-body">
            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>User ID:</strong>
                    <p>${cus.userID}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Email address:</strong>
                    <p>${cus.email}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Password:</strong>
                    <p>${cus.password}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Address:</strong>
                    <p>${cus.address}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>First Name:</strong>
                    <p>${cus.first_name}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Last Name:</strong>
                    <p>${cus.last_name}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>User Type:</strong>
                    <p>${cus.utype}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <strong>Status:</strong>
                    <p>${cus.status}</p>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="update-btn-cont">
	<form action="Admin/updateCus.jsp" method="post">
		<input type="hidden" name="email" value="${cus.email}">
		<input type="hidden" name="password" value="${cus.password}">
		<input type="hidden" name="address" value="${cus.address}">
		<input type="hidden" name="first_name" value="${cus.first_name}">
		<input type="hidden" name="last_name" value="${cus.last_name}">
		<input type="hidden" name="utype" value="${cus.utype}">
		<input type="hidden" name="status" value="${cus.status}">
		
		<input type="submit" value="Edit Profile" class="btn btn-success">
	</form>
	<div>
		<form action="CusManageServlet" method="post">
			<button type="submit" class="btn btn-danger" style="margin-top: 10px;">All Customers</button>
		</form>
	</div>
	
</div>
</body>
</html>