<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String cat = request.getParameter("cat");
	String std = request.getParameter("std");
	String ed= request.getParameter("ed");
	String des = request.getParameter("des");
	
%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Offer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-container {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            background-color: #343a40;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-container .form-label {
            font-weight: bold;
        }
        .form-container .btn {
            width: 100%;
        }
        .dropdown-menu {
            width: 100%;
        }
    </style>
</head>
<body class="bg-dark text-light">
    <div class="container mt-5 form-container">
        <h2>Update offer</h2>
        <form action="../EditOfferServlet">
        	<div class="mb-3">
                <label for="ofname" class="form-label">Offer Id</label>
                <input type="text" value="<%= id%>" class="form-control bg-dark text-light" id="ofname" name="id" readonly>
            </div>
             <input type="hidden" " id="ofname" name="ofname">
            <div class="mb-3">
                <label for="ofname" class="form-label">Offer Name</label>
                <input type="text" value ="<%= name%>" class="form-control bg-dark text-light" id="ofname" name="ofname" readonly>
            </div>
            <div class="mb-3">
                <label for="ofname" class="form-label">Category</label>
                <input type="text" value ="<%= cat%>"class="form-control bg-dark text-light" id="ofname" name="ofname" readonly>
            </div>
            <div class="mb-3">
                <label for="ofdescription" class="form-label">Description</label>
                <textarea name="ofdescription"value ="<%= des%> id="ofdescription" class="form-control bg-dark text-light" readonly>Brief description about the offer</textarea>
            </div>
            <div class="mb-3">
                <label for="ofstdate" class="form-label">Start Date</label>
                <input type="text"  value ="<%= std%> class="form-control bg-dark text-light" id="ofstdate" name="ofstdate" readonly>
            </div>
            <div class="mb-3">
                <label for="ofendate" class="form-label">End Date</label>
                <input type="date" value ="<%= ed%> class="form-control bg-dark text-light" id="ofendate" name="ofendate" >
            </div>
            <div class="text-center">
               
                    <button type = "submit" class = "btn btn-success">Update</button>
              
            </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>
