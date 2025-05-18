<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<link rel="stylesheet" href="../CSS/style2.css">


<style>

*{
    margin:0;
    padding:0;
    box-sizing: border-box;
}
body{
    background-color: #32312f;
    font-family: sans-serif;
}
.table-container{
    padding:0 10%;
    margin: 40px auto 0;
}
.heading{
    font-size: 40px;
    text-align: center;
    color: #f1f1f1;
    margin-bottom: 40px;

}
.table{
    width: 100%;
    border-collapse: collapse;
}
.table thead{
    background-color: #ee2828;
}
.table thead tr th{
    font-size: 14px;
    font-weight: 600;
    letter-spacing: 0.35px;
    color: #ffffff;
    opacity:1;
    padding: 12px;
    vertical-align: top;
    border: 1px solid #dee2e685;
}
.table tbody tr td{
    font-size: 14px;
    letter-spacing: 0.35px;
    font-weight: normal;
    color: #f1f1f1;
    background-color: #3c3f44;
    padding: 8px;
    text-align: center;
    border: 1px solid #dee2e685;
}
.table .text_open{
    font-size:14px;
    font-weight: bold;
    letter-spacing: 0.35px;
    color: #FF1046;

}
.table tbody tr td .btn{
    width: 130px;
    text-decoration: none;
    line-height: 35px;
    display: inline-block;
    background-color: #FF1046;
    font-weight: medium;
    color: #ffffff;
    text-align: center;
    vertical-align: middle;
    user-select: none;
    border: 1px solid transparent;
    font-size: 14px;
    opacity:1;
    cursor: pointer;
    border-radius: 12px;

}
.table tbody tr td .btn:hover{
    background: rgba(56,204,93,0.7);
    color:rgb(255,255,255);
}

</style>

</head>
<body>
    <h1 class="heading">My Vehicles</h1>


<table class="table">

<thead>
<tr>
	<th scope="col">vid</th>
	<th scope="col">description</th>
	<th scope="col">registrationNo</th>
	<th scope="col">amt</th>
	<th scope="col">added_date</th>
	<th scope="col">catid</th>
	<th scope="col">ftype</th>
	<th scope="col">passengers</th>
	<th scope="col">rentalprice</th>
	<th scope="col">image</th>
	<th scope="col">rating</th>
	<th scope="col">status</th>
	<th scope="col">voId</th>
	<th scope="col">tradeName</th>
	<th scope="col">brand</th>
</tr>
</thead>
<tbody>
	<c:forEach var="own" items="${owner}">
	<tr>
		<td>${own.vid}</td>
		<td>${own.description}</td>
		<td>${own.registrationNo}</td>
		<td>${own.amt}</td>
		<td>${own.added_date}</td>
		<td>${own.catid}</td>
		<td>${own.ftype}</td>
		<td>${own.passengers}</td>
		<td>${own.rentalprice}</td>
		<td>${own.image}</td>
		<td>${own.rating}</td>
		<td class="text_open">${own.status}</td>
		<td>${own.voId}</td>
		<td>${own.tradeName}</td>
		<td>${own.brand}</td>
		
		<td>
		<form action ="singleDataButton" method="post"> 
		<input type="hidden" name="vid" value="${own.vid}">
		<button type="submit" class="btn">data</button>
		
		</form>
		
		</td>
		
		<td>
		
		<form action="deleteVehicle" method="post">
			<input type="hidden" name="vid" value="${own.vid}">
			<button type="submit" class="btn">Delete</button>
		
		</form>
		</td>
		
		
		
		
	</tr>
	</c:forEach>
</tbody>

</table>


</div>
</body>
</html>
