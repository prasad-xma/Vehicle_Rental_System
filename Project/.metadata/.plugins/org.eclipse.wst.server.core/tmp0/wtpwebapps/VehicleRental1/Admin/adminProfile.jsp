<%@ page import="administrator.Admin" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Admin Profile</title>
</head>
<body class="bg-light">
	<div class="container mt-5">
		<div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h2>Admin Profile</h2>
                    </div>
                    <div class="card-body">
                        <%
                            Admin loggedAdmin = (Admin) session.getAttribute("administer");
                            if (loggedAdmin != null) {
                        %>
                            <div class="row mb-3">
                                <div class="col-md-4 text-center">
                                    <img src="./images/<%= loggedAdmin.getProfilePic()%>" alt="Profile Picture" class="img-fluid rounded-circle" width="150" />
                                </div>
                                <div class="col-md-8">
                                    <h4 class="card-title">Email</h4>
                                    <p class="card-text"><%= loggedAdmin.getEmail() %></p>

                                    <h4 class="card-title">NIC</h4>
                                    <p class="card-text"><%= loggedAdmin.getNic() %></p>
                                </div>
                            </div>
                        <%
                            } else {
                        %>
                            <div class="alert alert-warning text-center">
                                <p>You need to log in first.</p>
                            </div>
                        <%
                            }
                        %>
                    </div>
                    <div class="card-footer text-center">
                        <a href="AdminDash.jsp" class="btn btn-secondary">Back to Dashboard</a>
                    	<a href="updateAdmin.jsp" class="btn btn-warning">Update Profile</a>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>