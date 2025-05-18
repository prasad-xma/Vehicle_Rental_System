<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!--links for bs 5 cdn-->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
     <!--BS icon cdn-->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <title>Offers</title>

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
 #ni { 
    display: table-cell; 
    position: relative; 
    padding: 20px;
  }
      
    </style>
</head>
<body class="bg-dark">



		<nav class="navbar navbar-expand-lg bg-body-tertiary p-0 mb-0">
        <div class="container-fluid bg-dark navbar-dark pb-5 p-3">
          <a class="navbar-brand" href="#">Rent-ME!</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 me-auto mb-2 mb-lg-0 mx-auto">
              <li class="nav-item p-2" id ="ni">
                <a class="nav-link active hdr  text-white p-2" aria-current="page" href="ManagerDash.jsp" >DashBoard</a>
              </li>
              <li class="nav-item p-2" id ="ni">
                <a class="nav-link active hdr  text-white p-2" href="Manger(offers).jsp" onclick="submitHiddenForm()">Offers</a>
              </li>

              <li class="nav-item p-2" id ="ni">
                <a class="nav-link active hdr text-white p-2" href="manager(bookings).jsp">Bookings</a>
              </li>
            </ul>
            
             <div class="mx-3">
              <img src=" https://happytravel.viajes/wp-content/uploads/2020/04/146-1468479_my-profile-icon-blank-profile-picture-circle-hd-600x475.png" alt="" class="rounded-circle" style="width: 32px;height: 32px;">
            </div>
          </div>
        </div>
      </nav>
   



    <div class="container">
        <div class="row text-center my-4">
            <div class="col-lg-4 "><button  class="btn bg-secondary text-white p-5 border rounded-pill" data-bs-toggle="modal" data-bs-target="#addoffer"><h3>+ADD OFFER</h3></button></div>
        </div>
    </div>


    <div class="conatainer">
        <div class="row align-items-center justify-content-center">
            <section id="pricing" class="bg-dark text-light mt-5">
                <div class="container-lg">
                  <div class="text-center">
                    <h2 class="pt-3">Offer catagories</h2>
                    <p class="lead text-muted">Available offer catogories..</p>
                  </div>
              
                  <div class="row my-5 g-0 align-items-center justify-content-center">
                    <div class="col-8 col-lg-4 col-xl-3">
                      <div class="card border-0">
                        <div class="card-body text-center py-4 bg-dark text-light">
                          <h4 class="card-title">weekly offers</h4>
                          <p class="display-5 my-4 text-info fw-bold">currently available</p><br>
                          <p class="display-4 text-white">10</p>
                          <form action= "ViewOffersCat" method = "post">
                          <input type="hidden" id="cat" name="cato" value="m">
                          <button  class="btn btn-outline-info btn-lg mt-3" onclick ="disCat('w')" type="submit">
                            select
                          </button>
                          </form>
                        </div>
                      </div>
                    </div>
              
                    <div class="col-9 col-lg-4">
                      <div class="card border-info border-2">
                        <div class="card-header text-center text-info bg-secondary ">FOR loyal customers</div>
                        <div class="card-body text-center py-5 bg-dark text-light">
                          <h4 class="card-title">offers for loyal customers</h4>
                          <p class="lead card-subtitle">avilable offers</p><br>
                          <p class="display-4 text-white">10</p>
                          <form action= "ViewOffersCat" method = "post">
                          <input type="hidden" id="cat" name="cato" value="m">
                          <button  class="btn btn-outline-info btn-lg mt-3" onclick ="disCat('l')" type="submit">
                            select
                          </button>
                          </form>
                        </div>
                      </div>
                    </div>
              
                    <div class="col-8 col-lg-4 col-xl-3">
                      <div class="card border-0">
                        <div class="card-body text-center py-4 bg-dark text-light">
                          <h4 class="card-title">Monthly offers</h4>
                          <p class="lead card-subtitle"></p><br>
                          <p class="display-5 my-4 text-info fw-bold">currently available</p>
                          <p class="display-4 text-white">10</p>
                          <form action= "ViewOffersCat" method = "post">
                          <input type="hidden" id="cat" name="cato" value="m">
                          <button  class="btn btn-outline-info btn-lg mt-3" onclick ="disCat('m')" type="submit">
                            select
                          </button>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
              
                </div><!-- end container -->
              </section>
        </div>
    </div>
    
    
 	
	
    <div class="container mb-5">
        <div class="row align-items-center justify-content-center text-center">
          
           
   <form action="../ViewOffers"  id="hiddenForm" method ="get">
       <button type="submit" class="btn btn-info p-2">All offers</button>
    </form>
   
   
     <div class="container mt-5">
        <div class="row">
            <c:forEach var="offer" items="${offers}">
                <div class="col-md-4">
                    <div class="card bg-dark text-light mb-4" style="width: 18rem; border-width: 10px;">
                        <div class="card-body border-white">
                            <h5 class="card-title display-5">${offer.offerName}</h5>
                            <p class="card-text">
                                <div class="t">Category: ${offer.category}</div>
                                <div class="t">Start Date: ${offer.ofstdate}</div>
                                <div class="t">End Date: ${offer.ofendate}</div>
                                <div class="t">Description: ${offer.description}</div>
                            </p>
                            <a href="manager/OfferUpdate.jsp?id=${offer.id}&name=${offer.offerName}&cat=${offer.category}&std=${offer.ofstdate}&des=${offer.description}" class="btn btn-info mt-4" >Edit</a>
                            <a href="DeleteOfferServlet?id=${offer.id}" onclick="return confirmDelete()" class="btn btn-warning mt-4 ">Delete</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    
          
        </div>
    </div>
  
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


	
    <!--add offer modal-->

    <div class="modal fade" id="addoffer"  data-bs-backdrop="static" tabindex="-1" aria-labelledby="modal-title" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header bg-dark">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body bg-dark text-light">
              <h2>Add offer</h2>
            <form action="../AddOfferServlet" method="post">
              
              <label for="modal-email" class="form-label">offer name</label>
              <input type="text" class="form-control bg-dark text-light" id="ofname" name="ofname">
    
              <label for="cat" class="form-label">catogory</label>
              <div class="dropdown">
                  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                    catagory
                  </button>
                  <ul class="dropdown-menu bg-dark text-light" aria-labelledby="dropdownMenuButton1">
                    <li><a class="dropdown-item text-light" href="#" onclick="selectCategory('weekly')">Weekly Offer</a></li>
                    <li><a class="dropdown-item text-light" href="#" onclick="selectCategory('loyal_cust')">Loyal Customer Offer</a></li>
                    <li><a class="dropdown-item text-light" href="#" onclick="selectCategory('monthly')">Monthly Offer</a></li>
                  </ul>
                </div>

                <input type="hidden" name="category" id="categoryInput">
              
              <label for="description" class="form-label mt-2 ">Description</label>
              <textarea name="ofdescription" id="ofdescription" class="form-control bg-dark text-light">Breif description about the offer</textarea>
  
              <label for="price" class="form-label mt-2 fw-bold">validity</label><br>
              start date: <br><br>
              <input type="date" class="form-control bg-dark text-light" id="ofstdate" name="ofstdate" ><br>
              End date: <br><br>
              <input type="date" class="form-control bg-dark text-light" id="ofendate" name="ofendate" >
            
            
            <input type="submit" value="Add" class="btn btn-success">

        </form>
            
          </div>
         
        </div>
      </div>
    </div>



	


	<!--  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	-->
	
    <script>
      function selectCategory(category) {
        document.getElementById('categoryInput').value = category;
      }
    </script>
    
    <script>
    function disCat(c){
    	document.getElementById("cat").value = c;
    }
	</script>
	
	<script>
	function confirmDelete() {
    return confirm("Are you sure you want to delete this offer?");
	}
	</script>
	
	<script>
        function submitHiddenForm() {
            document.getElementById('hiddenForm').submit();
        }
        </script>   
 
</body>
</html>