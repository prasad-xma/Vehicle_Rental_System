<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bookings</title>
    
    <style>
      .t{
        text-align: left;
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
    
    
    
    <!--links for bs 5 cdn-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <!--BS icon cdn-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body class="bg-dark text-light">

	<nav class="navbar navbar-expand-lg bg-body-tertiary p-0 mb-0">
        <div class="container-fluid bg-dark navbar-dark pb-5 p-3">
          <a class="navbar-brand" href="#">Rent-ME!</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 me-auto mb-2 mb-lg-0 mx-auto">
              <li class="nav-item p-2" id ="ni">
                <a class="nav-link active hdr  text-white p-2" aria-current="page" href="manager/ManagerDash.jsp">DashBoard</a>
              </li>
              <li class="nav-item p-2" id ="ni">
                <a class="nav-link active hdr  text-white p-2" href="manager/Manger(offers).jsp">Offers</a>
              </li>

              <li class="nav-item p-2" id ="ni">
                <a class="nav-link active hdr text-white p-2" href="manager/manager(bookings).jsp">Bookings</a>
              </li>
            </ul>
            
             <div class="mx-3">
              <img src=" https://happytravel.viajes/wp-content/uploads/2020/04/146-1468479_my-profile-icon-blank-profile-picture-circle-hd-600x475.png" alt="" class="rounded-circle" style="width: 32px;height: 32px;">
            </div>
          </div>
        </div>
      </nav>
   
   
 	<div class="container">
		<div class="row text-center">
			<form action="../ManagerBookingServlet" method ="post" >
        		<button class="btn btn-primary" type="submit">
          see all bookings
        </button>
    </form>
		</div> 	
 	</div>
	
    <section>
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col">
                <h3 class="text-center my-4 p-3 my-4 border border-info border-3">Active bookings</h3>
                <table class="table table-hover table-dark my-5">
                    <thead>
                      <tr>
                        <th scope="col">ID</th>
                            <th scope="col">start date</th>
                            <th scope="col">type</th>
                            <th scope="col">end date </th>
                            <th scope="col">status</th>
                           
                      </tr>
                    </thead>
                    <tbody>
                  <c:forEach var="a" items="${actB}">
                  <tr>
                    <td ><c:out value ="${a.id}"></c:out></td>
                    <td ><c:out value ="${a.start_date}"></c:out></td>
                    <td>><c:out value ="${a.type}"></c:out></td>
                    <td><c:out value ="${a.end_date}"></c:out></td>
                    <td><c:out value = "${a.status}"></c:out></td>
                    
                    <td class="text-center"><a href ="ManagerBookingServlet?ids=<c:out value ='${a.id}'/>&what=decline" class="btn btn-warning">Deactivate</a>
                  </tr>
                </c:forEach>
                  </table>
            </div>
        </div>
    </div>
    </section>

    <section>
        <div class="container-fluid">
            <div class="row justify-content-center align-items-center">
                <div class="col-5">
                    <h3 class="text-center col-8 p-3 my-4 border border-info border-3">All bookings</h3>
                    <table class="table table-hover table-dark my-5">
                        <thead>
                          <tr>
                            <th scope="col">Number</th>
                            <th scope="col">Customer</th>
                            <th scope="col">Type</th>
                            <th scope="col">Vehicle number</th>
                            <th scope="col">start date</th>
                            <th scope="col">end date</th>
                            <th scope="col"></th>
                          </tr>
                        </thead>
                        <c:forEach var="f" items="${finB}">
                  <tr>
                    <td ><c:out value ="${f.id}"></c:out></td>
                    <td ><c:out value ="${f.start_date}"></c:out></td>
                    <td>><c:out value ="${f.type}"></c:out></td>
                    <td><c:out value ="${f.end_date}"></c:out></td>
                    <td><c:out value = "${f.status}"></c:out></td>
                    <td><img src="" alt="">gg</td>
                    <td class="text-center"><a href ="ManagerBookingServlet?ids=<c:out value ='${f.id}'/>&what=delete" class="btn btn-danger">Remove</a>
                  </tr>
                </c:forEach>
                      </table>
                </div>
                <div class="col-1"></div>
                
                <div class="col-4 my-4">
                    <div class="card">
                        <div class="card-body bg-dark text-light">
                          <h4 class="card-title">bookings among deifferent catogories</h4>
                          <canvas class="m-4 text-light" id="doe-cat"></canvas>
                        </div>
                      </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row justify-content-center align-items-center">
                
                    <div class="col my-4">
                        <div class="card">
                            <div class="card-body bg-dark text-light">
                              <h4 class="card-title">Booking rate in last year</h4>
                              <canvas class="m-4" id="booking"></canvas>
                            </div>
                          </div>
                    </div>
                
            </div>
        </div>
    </section>
    
    
    
    
    <!-- Footer -->
<footer class="text-center text-lg-start bg-dark text-white">
    <!-- Section: Social media -->
    <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
      <!-- Left -->
      <div class="me-5 d-none d-lg-block">
        <span>Get connected with us on social networks:</span>
      </div>
      <!-- Left -->
  
      <!-- Right -->
      <div>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-facebook-f"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-google"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-instagram"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="" class="me-4 text-reset">
          <i class="fab fa-github"></i>
        </a>
      </div>
      <!-- Right -->
    </section>
    <!-- Section: Social media -->
  
    <!-- Section: Links  -->
    <section class="">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <!-- Content -->
            <h6 class="text-uppercase fw-bold mb-4">
              <i class="fas fa-gem me-3"></i>RentME!
            </h6>
            <p>
              Here you can use rows and columns to organize your footer content. Lorem ipsum
              dolor sit amet, consectetur adipisicing elit.
            </p>
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4">
              Products
            </h6>
            <p>
              <a href="#!" class="text-reset">Angular</a>
            </p>
            <p>
              <a href="#!" class="text-reset">React</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Vue</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Laravel</a>
            </p>
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4">
              Useful links
            </h6>
            <p>
              <a href="#!" class="text-reset">Pricing</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Settings</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Orders</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Help</a>
            </p>
          </div>
          <!-- Grid column -->
  
          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
            <p><i class="fas fa-home me-3"></i> 45/2, Batharamulla, Sri Lanka</p>
            <p>
              <i class="fas fa-envelope me-3"></i>
              yyy@example.com
            </p>
            <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
            <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->
  
    <!-- Copyright -->
    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
      © 2024 Copyright:
      <a class="text-reset fw-bold" href="#">RentME!</a>
    </div>
    <!-- Copyright -->
  </footer>
  <!-- Footer -->

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>

        const cat = document.getElementById('doe-cat');
        cat.height =50;
        new Chart(cat, {
          type: 'doughnut',
          data: {
            labels: ['basic','semi-luxury','luxury'],
            datasets: [{
              label: 'bookings among deifferent catogories',
              data: [12, 19, 3],
              borderWidth: 1
            }]
          }
        });

        const b = document.getElementById('booking');
        b.height =50;
        new Chart(b, {
          type: 'line',
          data: {
            labels: ['jan','feb','mar','april','june','july','aug','sep','oct','nov','dec'],
            datasets: [{
              label: 'bookings in last year',
              data: [12, 19, 3,25,6,4,5,6,45,1,2],
              borderWidth: 1
            }]
          }
        });
    </script>
    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    
</body>
</html>