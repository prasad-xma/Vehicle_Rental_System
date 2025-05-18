<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservations</title>
    <script src="https://kit.fontawesome.com/32e2213952.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styles/viewV.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <style>

        .nav-item{
            padding: 10px;
            margin: 10px;
        }

        </style>
</head>
<body>

<%@include file="../includes/CHeader.jsp" %>

   <div class="container p-5">
    <h5 class="card-title display-5">My reservations</h5>

    
   
    <ul class="nav nav-tabs" style="padding: 10px;">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">All Bookings</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Up-coming Bookings</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Cancelled_bookings.html">Cancelled bookings</a>
        </li>
      </ul>


      
<form method="post" action="../ReservationsServlet">

      <input type = "submit" class="btn btn-primary" value="Refresh">


  <!--View Bookings-->

  <div class="container p-5">

    <!--Alert Place Holder-->

    <div id="liveAlertPlaceholder"></div>
    <!--End of alert-->

    <div class="card mb-3" style="max-width: 800px;">
        <div class="card-header text-start">
            <h3>
            Poshe camero
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
                <small class="text-body-secondary">Pick-up</small><br>
                <small class="text-body-secondary">Return</small><br>
                <small class="text-body-secondary">start</small><br>
                <small class="text-body-secondary">Destination</small><br>
                <small class="text-body-secondary mx-5" style="float: right;">Rental price</small>
            </p>

              <h2 class="card-text mx-5" style="float: right;">
                
                RS.400000
              </h2>
            </div>
          </div>

   

          <div class="row p-5">
            
            <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">Cancel Booking</button>
          </div>

        </div>

      
          <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Are you sure?</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          You will cancell the booking permenetlly by clicking yes! 
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
          <button type="button" class="btn btn-primary" data-bs-dismiss="modal" id="liveAlertBtn">Yes</button>
        </div>
      </div>
    </div>
  </div>
        </div>
        </form>
        
      </div>

      

   </div>

   <!--SERVICE SUMMARY-->

<div class="contain p-5" style="width: 30%;float: right; position: relative;top: -500px">
   <div class="card">
    <div class="card-header">
      <h4>Service Summary</h4>
    </div>
    <div class="card-body">
      <h5 class="card-title">5</h5>
      
      <p class="card-text">Pick-ups</p>
      
    </div>
  </div>
</div>
 <!--SEVVICE SUMMARY END-->

 


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="JS/BookC_Success.js">
        </script>
</body>
</html>