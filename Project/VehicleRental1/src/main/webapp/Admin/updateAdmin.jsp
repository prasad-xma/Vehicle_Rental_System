<%@ page import="administrator.Admin" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<form action="AdminUpdateServlet" method="POST">
	<%
  		Admin loggedAdmin = (Admin) session.getAttribute("administer");
       	if (loggedAdmin != null) { %>
	 
    <label for="email">Email:</label>
    <input type="email" name="email" value="<%= loggedAdmin.getEmail() %>" required>
    <br>
    <label for="nic">NIC:</label>
    <input type="text" name="nic" value="<%= loggedAdmin.getNic() %>" required>
    <br>
    <div class="mb-3">
  		<label for="formFile" class="form-label">Profile Picture:</label>
  		<input class="form-control" type="file" id="formFile" name="profilePic" value="<%= loggedAdmin.getProfilePic() %>">
	</div>
    <br>
    <% } %>
    <input type="submit" value="Update Profile">
</form>
</body>
</html>