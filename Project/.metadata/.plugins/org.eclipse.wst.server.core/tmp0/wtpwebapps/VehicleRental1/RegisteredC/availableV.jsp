<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View vehicles</title>
    <link rel="stylesheet" href="styles/header.css">
    <link rel="stylesheet" href="styles/viewV.css">
    <script src="https://kit.fontawesome.com/32e2213952.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<%


HttpSession sess = request.getSession();

String pdate = (String)sess.getAttribute("pickup_date");
String rdate = (String)sess.getAttribute("return_date");
String paddress = (String)sess.getAttribute("paddress");
String daddress = (String)sess.getAttribute("daddress");



%>



<%@include file="../includes/CHeader.jsp" %>

    <!--Booking details form-->

    <div class="container w-25 p-5" style="float: left; height: 100em;">
        <div class="card">
            <div class="card-header">
                Booking details
            </div>

            <div class="card-body">
                <div class="card-text">

                </div>
            </div>

            <div class="row p-2">
                <div class="col">
                    Time and place: 
                </div>

                <div class="col-5">
                    <button class="btn btn-success">
                        <i class="fa-solid fa-pen-to-square"></i>Edit
                    </button>
                </div>
                
            </div>

            <div class="row p-2">
                <div class="col">
                    Pick-up: 
                </div>

                <div class="col">
                    <input type="text" value="<%= pdate %>" readonly> 
                </div>
                
            </div>

            <div class="row p-2">
                <div class="col">
                    Return: 
                </div>

                <div class="col">
                    <input type="text" value="<%= rdate %>" readonly> 
                </div>
                
            </div>
            
                 <div class="row p-2">
                <div class="col">
                    pickup at: 
                </div>

                <div class="col">
                    <input type="text" value="<%= paddress %>" readonly> 
                </div>
                
            </div>
            
                 <div class="row p-2">
                <div class="col">
                    Destination: 
                </div>

                <div class="col">
                    <input type="text" value="<%= daddress %>" readonly> 
                </div>
                
            </div>
            </div>
        </div>




    <!--Filters-->
    <div class="container p-5" style="height: 200%;">

        <div class="dropdown">
            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Price
            </a>
          
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Highest-Lowest</a></li>
              <li><a class="dropdown-item" href="#">Lowest-Highest</a></li>
              
            </ul>




    </div>


    <!--car profiles-->

    <div style="margin-left: 50px; padding-left: 20px;" class="my-5">
    
    <c:forEach var ="avs" items = "${av}">
    
    <c:set var="vid" value="${avs.vid}"/>
    <c:set var="description" value="${avs.description}"/>
    <c:set var="amt" value="${avs.amt}"/>
    <c:set var="passengers" value="${avs.passengers}"/>
    <c:set var="rental" value="${avs.rentalPrice}"/>
    <c:set var="ftype" value="${avs.ftype}"/>
    <c:set var="brand" value="${avs.brand}"/>
    <c:set var="tradeName" value="${avs.tradeName}"/>
    
	

    <div class="container p-5">

    <div class="card mb-3" style="max-width: 800px;">
        <div class="card-header text-start">
            <h3>
            ${avs.brand} ${avs.tradeName} 
            </h3>
        </div>
        <div class="row g-0">
          <div class="col-md-4">
            <img src="images/cars/poshe_jeep.jpg" class="img-fluid rounded-start" alt="...">
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">
                <i class="fa-solid fa-user"> ${avs.passengers}</i>
                <i class="fa-solid fa-gas-pump"> ${avs.ftype}</i>
                <i class="fa-solid fa-drum-steelpan"> ${avs.amt}</i>
              </p>
              <p class="card-text"><small class="text-body-secondary">Added On ${avs.added_date}</small>
                <small class="text-body-secondary mx-5" style="float: right;">Rental price</small>
            </p>

              <h2 class="card-text mx-5" style="float: right;">
                
                RS. ${avs.rentalPrice}
              </h2>
            </div>
          </div>

          <div class="row p-4">
          
          
          <c:url value="RegisteredC/payment.jsp" var="sumr">

			<c:param name="vid" value="${vid}"/>
			<c:param name="description" value="${description}"/>
			<c:param name="amt" value="${amt}"/>
			<c:param name="passengers" value="${passengers}"/>
			<c:param name="rental" value="${rental}"/>
			<c:param name="ftype" value="${ftype}"/>
			<c:param name="brand" value="${brand}"/>
			<c:param name="tradeName" value="${tradeName}"/>
		
		</c:url>
            
            <!--   <button class="btn btn-success">Book Now</button> -->
            <a href="${sumr}"><input class="btn btn-success" type="submit" name = "update" value="Book now" style="width: 100%;"></a>
          </div>
        </div>
        
      </div>

      </div>
      </c:forEach>
          </div>
          
          
          
          
<%@include file="../includes/CFooter.jsp" %>
          

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>tml>