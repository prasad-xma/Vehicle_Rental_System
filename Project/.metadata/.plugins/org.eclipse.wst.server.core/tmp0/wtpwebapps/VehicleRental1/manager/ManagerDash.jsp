<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


	<!-- header style -->
	<style>
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
	<!-- end off header style -->
	
	
    <!--links for bs 5 cdn-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <!--BS icon cdn-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <title>Manager dash</title>

</head>
<body class="bg-dark">

 	<!-- header -->
 	
 	<!--Header nav start-->
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
			<form action="./managerDashServlet" method ="post" >
        		<button class="btn btn-primary" type="submit">
          see all requests
        </button>
    </form>
		</div> 	
 	</div>
 	
 	
    <section>
        <div class="container my-4 pt-5">
        <div class="row ">
            <div class="col-md-6">
            <h3 class="text-center my-2 bg-light p-2 rounded-phil bg-dark text-light">Register requests</h3>
            <table class="table table-striped my-4 table-dark">
                <thead>
                  <tr>
                    <th scope="col-2">ID</th>
                    <th scope="col-2">RegNo</th>
                    <th scope="col-2">Added date</th>
                    <th scope="col-2">Type</th>
                    <th scope="col-2">Owner</th>
                    <th scope="col-4"></th>
                    
           
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="req" items="${reg_req}">
                  <tr>
                    <td><c:out value ="${req.id}"></c:out></td>
                    <td>><c:out value ="${req.reg}"></c:out></td>
                    <td><c:out value ="${req.addDate}"></c:out></td>
                    <td><c:out value = "${req.type}"></c:out></td>
                    <td><img src="" alt="">gg</td>
                    <td class="text-center"><a href ="Manager_up?id=<c:out value ='${req.id}'/>&type=reg-ac" class="btn btn-success">Accept</a>
                    <a href ="Manager_up?id=<c:out value ='${req.id}'/>&type=reg-dec" class="btn btn-danger">Decline</a>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
            </div>
 
            <div class="col-1"></div>
            <div class="col-5 text-center">
                <div class="card">
                    <div class="card-body bg-dark text-light">
                      <h4 class="card-title">Registation rate last 6 months</h4>
                      <canvas class="m-5" id="myChart"></canvas>
                    </div>
                  </div>
            </div>
        </div>
        </div>
    </section>
    

    <section>
        <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col">
                <h3 class="text-center my-2 bg-light p-2 rounded bg-dark text-light">Update requests</h3>
            <table class="table table-striped my-4 table-dark">
                <thead>
                  <tr>
                    <th scope="col-2">ID</th>
                    <th scope="col-2">RegNo</th>
                    <th scope="col-2">Added date</th>
                    <th scope="col-2">Type</th>
                    <th scope="col-2">Owner</th>
                    <th scope="col-4"></th>
                    
                    
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="up" items="${up_req}">
                  <tr>
                    <td ><c:out value ="${up.id}"></c:out></td>
                    <td>><c:out value ="${up.reg}"></c:out></td>
                    <td><c:out value ="${up.addDate}"></c:out></td>
                    <td><c:out value = "${up.type}"></c:out></td>
                    <td><img src="" alt="">gg</td>
                    <td class="text-center"><a href ="Manager_up?id=<c:out value ='${up.id}'/>&type=up-ac" class="btn btn-success">Accept</a>
                    <a href ="Manager_up?id=<c:out value ='${up.id}'/>&type=up-dec" class="btn btn-danger">decline</a></td>
                  </tr>
                </c:forEach>
                  
                </tbody>
              </table>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    
	<script>
    // Fetch data from the Servlet
    fetch('/VehicleRental1/managerDashServlet') // Change this to your actual project path
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok ' + response.statusText);
            }
            return response.json();
        })
        .then(data => {
            const reg = document.getElementById('myChart');

            // Create the chart
            new Chart(reg, {
                type: 'line',
                data: {
                    labels: data.labels, // Use the labels from the fetched data
                    datasets: [{
                        label: 'Registration Rate Last 6 Months',
                        data: data.values, // Use the values from the fetched data
                        borderWidth: 1,
                        borderColor: 'rgba(75, 192, 192, 1)',
                        fill: false // Optional: set to true if you want the area below the line to be filled
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        })
        .catch(error => console.error('Error fetching data:', error));
</script>

    
    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    
    
     
</body>
</html>