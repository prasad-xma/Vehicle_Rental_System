<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>


<c:forEach var ="cus" items = "${cusDetails}">




<label>ID : </label>${cus.userID}<br>
<label>Name : </label>${cus.email}<br>
<label>Phone : </label>${cus.password}<br>
<label>Username : </label>${cus.fname}<br>
<label>Email : </label>${cus.lname}<br>



</c:forEach>


</body>
</html>