<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style>



.top-im{
    width: 100%;
    height: 70%;
    object-fit: contain;
    /*border-radius: 81% 19% 83% 17% / 34% 20% 80% 66% ;*/

}

.quote1{
    position: relative;
    top: 6em;
}

/*<uniquifier>: Use a unique and descriptive class name
 <weight>: Use a value from 400 to 900*/

.font1 {
  font-family: "Playfair Display", serif;
  font-optical-sizing: auto;
  font-weight: 600;
  font-style: normal;
}

.card{
    width: 25%;
    padding: 20px;
    margin: 20px;


}

.sec-2{

    position: relative;
    top: -30px;



}

.card{

    padding: 20px;

}

.sec-1{
    
    
}



.hdr:after {    
    background: none repeat scroll 0 0 transparent;
    bottom: 0;
    content: "";
    display: block;
    height: 2px;
    left: 50%;
    position: absolute;
    background: #d9dade;
    transition: width 0.3s ease 0s, left 0.3s ease 0s;
    width: 0;
  }
  .hdr:hover:after { 
    width: 100%; 
    left: 0; 
  }
  li { 
    display: table-cell; 
    position: relative; 
    padding: 20px;
  }

</style>
</head>
<body>


  <!--Header nav start-->
    <nav class="navbar navbar-expand-lg bg-body-tertiary p-0">
        <div class="container-fluid bg-dark navbar-dark mb-0 p-3">
          <a class="navbar-brand" href="#">Rent-ME!</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active hdr" aria-current="page" href="../RegisteredC/booking.jsp">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active hdr" href="vOwner/register.jsp"><button type="button" class="btn btn-secondary">Register</button></a>
              </li>

              <li class="nav-item">
                <form action="adminVehicle" method="post">

<button class="nav-link active hdr" type="submit">ALL Customers</button>
</form>
              </li>
           

         
           
            </ul>
            
             <div class="mx-3">
              <button type="button" class="btn btn-primary" type="submit" data-bs-toggle="modal" data-bs-target="#exampleModal">Log-out</button>
              
            </div>
          </div>
        </div>
      </nav>

      <!--Header nav end-->
<a href="vOwner/login.jsp">
<button type="button" class="btn btn-secondary">My vehicles</button>
</a>


<a href="vOwner/register.jsp">
<button type="button" class="btn btn-secondary">Register</button>
</a>

<form action="adminVehicle" method="post">

<button type="submit">ALL Customers</button>
</form>


<!-- image/home -->
<div class="container-fluid  sec-1">

    <div class="row">

        <div class="col-9 mx-5">

            <h2 class="display-3 quote1 font1">
                Rent the 
                <span class="text-primary">car</span> 
                of your dream<br>
               <div class="text-start  w-50"> <button class="btn btn-primary float">Join us</button></div>
                </h2>

        </div>

    <div class="col-20 m-0 p-0 opacity-100">
        <img src="images/vincent-ghilione-bAEG-LbgQ7o-unsplash.jpg" class="img-fluid top-im">
    </div>

    </div>
    </div>

<!-- image/home end -->



</body>
</html>