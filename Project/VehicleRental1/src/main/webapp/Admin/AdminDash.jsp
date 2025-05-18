<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="Admin/css/AdminStyle.css">
    <!--  Fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Admin Dashboard</title>
<style>
        .card {
            border-radius: 15px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card img {
            object-fit: cover;
            height: 200px;
        }

        .card-body button {
            color: #fff;
            background-color: #28a745;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
        }

        .card-body button:hover {
            background-color: rgba(0, 123, 255, 0.9);
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
        }

        .card-text {
            font-size: 1.1rem;
        }

        .card-deck {
            gap: 1.5rem;
        }
        .slidebar {
        	min-height: 100vh;
        	/* background-color: lightgray; */
        }
    </style>

</head>
<body>
<!-- Main container -->
    <div class="container-fluid">
        <div class="row">
            <!-- Slide bar -->
            <div class="col-sm-3 slidebar bg-light">
                <h2 class="text-center">Admin Dashboard</h2>
                <div class="slidebar-side-links">
                    <a href="AdminDash.jsp" class="d-flex justify-content-between">
                        Dashboard
                        <i class="fa-solid fa-house"></i>
                    </a>
                   
                    <div class="form-btn my-3">
                        <form action="VehicleOwnerServlet" method="post">
                            <button type="submit" class="click-btn btn d-flex justify-content-between align-items-center w-100">
                                <span>Manage Vehicle Owners</span>
                                <i class="fa-solid fa-car"></i>
                            </button>
                        </form>
                    </div>
               
                    <div class="form-btn my-3">
                        <form action="CusManageServlet" method="post">
                            <button type="submit" class="click-btn btn d-flex justify-content-between align-items-center w-100">
                                <span>Manager Customers</span>
                                <i class="fa-solid fa-people-robbery"></i>
                            </button>
                        </form>
                    </div>
                    <div class="form-btn my-3">
                        <form action="ManagerDetailsServlet" method="post">
                            <button type="submit" class="click-btn btn d-flex justify-content-between align-items-center w-100">
                                <span>Manager Managers</span>
                                <i class="fa-solid fa-people-roof"></i>
                            </button>
                        </form>
                    </div>
                    <a href="#" class="d-flex justify-content-between">
                        Reports
                        <i class="fa-solid fa-file-shield"></i>
                    </a>
                </div>
                <!-- horizontal line -->
                <hr class="horizontal-line">
                <div class="ToDo-List text-center">
                    <a href="#" class="btn btn-secondary">ToDo-List</a>
                </div>
            </div>

            <!-- Body Content with Cards -->
			<div class="col-sm-9 p-3">
			    
			    <div class="row mb-3">
			        <!-- Customers Card -->
			        <div class="col-md-6 mb-3">
			            <div class="card" style="width: 100%;">
			               <!-- <img src="./images/customers.jpeg" class="card-img-top">  --> 
			                <img src="https://th.bing.com/th/id/R.0e3b255eb522823e2f77e3058d2b6396?rik=T%2fPyjXz8VVQiFw&riu=http%3a%2f%2fcoolerinsights.com%2fwp-content%2fuploads%2f2013%2f10%2fThe-5-Levels-of-Customer-Engagement.jpg&ehk=Czo5NZeu1lxVL2wDn6S25NnASeJ%2bvOWV0O%2boNCBjkN8%3d&risl=&pid=ImgRaw&r=0" class="card-img-top">
			                <div class="card-body">
			                    <h5 class="card-title">Customers</h5>
			                    <p class="card-text">Manage and view all customers of the platform.</p>
			                    <form action="CusManageServlet" method="post">
			                        <button type="submit" class="btn w-100">View All Customers</button>
			                    </form>
			                </div>
			            </div>
			        </div>
			
			        <!-- Vehicle Owners Card -->
			        <div class="col-md-6 mb-3">
			            <div class="card" style="width: 100%;">
			               <!--  <img src="./images/vehicleOwner.jpeg" class="card-img-top">  -->
			                <img src="https://th.bing.com/th/id/OIP.O5neAXRPXKfTVo0Cf9fcpAHaEK?w=324&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7" class="card-img-top">
			                <div class="card-body">
			                    <h5 class="card-title">Vehicle Owners</h5>
			                    <p class="card-text">Manage and view all vehicle owners</p>
			                    <form action="VehicleOwnerServlet" method="post">
			                        <button type="submit" class="btn w-100">View All Vehicle Owners</button>
			                    </form>
			                </div>
			            </div>
			        </div>
			    </div>
			
			    
			    <div class="row">
			        <!-- Ma	nagers Card -->
			        <div class="col-md-6 mb-3">
			            <div class="card" style="width: 100%;">
			                <img src="https://th.bing.com/th/id/OIP.RTbX_asli_ftt4h4hJOuzgHaD_?rs=1&pid=ImgDetMain" class="card-img-top">
			                <div class="card-body">
			                    <h5 class="card-title">Managers</h5>
			                    <p class="card-text">Manage and view all managers</p>
			                    <form action="ManagerDetailsServlet" method="post">
			                        <button type="submit" class="btn w-100">View All Managers</button>
			                    </form>
			                </div>
			            </div>
			        </div>
			
			        <!-- Vehicle Category Card -->
			        <div class="col-md-6 mb-3">
			            <div class="card" style="width: 100%;">
			                <img src="https://www.mercedes-benz.com/content/dam/brandhub/vehicles/vehicle-overview/00-mercedes-benz-vehicles-passnger-cars-vans-2560x1440.cbv20230517105847.jpg/_jcr_content/renditions/mq7-original-aspect.jpeg" class="card-img-top">
			                <div class="card-body">
			                    <h5 class="card-title">Vehicle Categories</h5>
			                    <p class="card-text">Manage and view all vehicle categories available for rental.</p>
			                    <form action="VcategoryDetailsServlet" method="post">
			                        <button type="submit" class="btn w-100">View All Vehicle Categories</button>
			                    </form>
			                </div>
			            </div>
			        </div>
    			</div>
			</div>
            
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
		
</body>
</html>