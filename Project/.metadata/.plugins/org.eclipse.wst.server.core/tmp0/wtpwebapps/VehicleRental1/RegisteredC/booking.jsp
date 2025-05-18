<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   <link rel="stylesheet" href="styles/header.css">
</head>
<body>


<%


HttpSession get1 = request.getSession();

String role = (String)get1.getAttribute("role");
String fname = (String)get1.getAttribute("fname");
String lname = (String)get1.getAttribute("lname");
String  address= (String)get1.getAttribute("address");
String  passw= (String)get1.getAttribute("pass");
String  mail= (String)get1.getAttribute("mail");
int  uid= (int)get1.getAttribute("uid");



%>


<%@include file="../includes/CHeader.jsp" %>



  <div class="container-fluid">
    <div class="row-5">
      <div class="col-116">
        <div class="card bg-dark text-white"  style="max-width: max-content;">
          <img src="images/cars/poshe_jeep.jpg" class="card-img img-fluid " alt="car" style="object-fit: contain;"/>
          <div class="card-img-overlay" style="background-color: rgba(0, 0, 0, 0.3)">
          <h1 class="card-totle display1 text-center">Hi <%= fname %>!</h1>
            <div class="text-center p-5" style="margin-top: 10%;">
            <h5 class="card-title display-1">Rent a vehicle</h5>

            <!--booking form start-->

            <p class="card-text">

              <form class="row g-3 needs-validation"  method="post" action="BookingServlet">
                <div class="col-md-4">
                  <label for="validationCustom01" class="form-label">Pick-up date</label>
                  <input type="date" class="form-control" id="validationCustom01" name = "pdate" required >
                  <div class="valid-feedback">
                    Looks good!
                  </div>
                </div>
                <div class="col-md-4">
                  <label for="validationCustom02" class="form-label">Return-date</label>
                  <input type="date" class="form-control" id="validationCustom02" name="rdate" required>
                  <div class="valid-feedback">
                    Looks good!
                  </div>
                </div>
                <div class="col-md-4">
                  <label for="validationCustomUsername" class="form-label">Pick-up address</label>
                  <div class="input-group has-validation">
                    <span class="input-group-text" id="inputGroupPrepend">@</span>
                    <input type="text" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" name = "paddress" required>
                    <div class="invalid-feedback">
                      Please choose a username.
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <label for="validationCustom03" class="form-label">Destination-address</label>
                  <input type="text" class="form-control" id="validationCustom03"  name = "daddress" required>
                  <div class="invalid-feedback">
                    Please provide a valid city.
                  </div>
                </div>
                <div class="col-md-3">
                  <label for="validationCustom04" class="form-label">Vehicle-type</label>
                  <select class="form-select" id="validationCustom04" name = "type" required>
                    <option selected  value="">Choose...</option>
                    <option value="Luxuary Cars">Luxuary Cars</option>
                    <option value="Van">Van</option>
                    <option value="Double Cab">Double Cab</option>
                  </select>
                  <div class="invalid-feedback">
                    Please select a valid state.
                  </div>
                </div>
                <div class="col-md-3">
                  <label for="validationCustom05" class="form-label">Zip</label>
                  <input type="text" class="form-control" id="validationCustom05" required>
                  <div class="invalid-feedback">
                    Please provide a valid zip.
                  </div>
                </div>
                
                <div class="col-12">
                 <input type="submit" name="sub" value="Search" class="btn btn-primary"> 
                </div>
              </form>

              
              

            </p>

            <!--booking form ends-->


            <p class="card-text">Last updated 3 mins ago</p>
          </div>
        </div>
        

      </div>
    </div>

  </div>




  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>