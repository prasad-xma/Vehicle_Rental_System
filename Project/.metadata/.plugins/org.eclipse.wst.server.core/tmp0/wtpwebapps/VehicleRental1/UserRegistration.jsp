<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Registration or Sign Up form in HTML CSS | CodingLab </title> 
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="styles/Registration.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/header.css">
   </head>
<body>












    <!--Header nav start-->
    <nav class="navbar navbar-expand-lg bg-body-tertiary p-0">
        <div class="container-fluid bg-dark navbar-dark mb-3 p-3">
          <a class="navbar-brand" href="#">Rent-ME!</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active hdr" aria-current="page" href="C:\Users\CHAMA COMPUTERS\Desktop\W_PROJ\BckEnd_test\vehicalRental1\src\main\webapp\header.jsp">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active hdr" href="#">About-Us</a>
              </li>

              <li class="nav-item">
                <a class="nav-link active hdr" href="#">Contact-Us</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Dropdown
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </li>

              <li class="nav-item">
                <button type="button" class="btn btn-primary">Post the booking</button>
              </li>
           
            </ul>
            
             <div class="mx-3">
              <button type="button" class="btn btn-primary" type="submit" data-bs-toggle="modal" data-bs-target="#exampleModal">Log-in</button>

             

  
              
            </div>
          </div>
        </div>
      </nav>

      <!--Header nav end-->



  <div class="wrapper" style="align-items: center; justify-content: center;position: relative;left: 40%;">
    <h2>Registration</h2>
    <form action="uRegisterServlet" method="post">
        <div class="">
            <label class="">Use Type</label><br>
         
            <select name="utype" id="cars">
                <option value="customer">Customer</option>
                <option value="vowner">Vehicle owner</option>
                <option value="manager">Manager</option>
                <option value="admin">Admin</option>
              </select>

           

            
          </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your first name" name="fname"  required>
      </div>

      <div class="input-box">
        <input type="text" placeholder="Enter your last name" name="lname"  required>
      </div>

      
      <div class="input-box">
        <input type="text" placeholder="Enter your home address" name="address"  required>
      </div>
      <div class="input-box">
        <input type="email" placeholder="Enter your email" name="email"  required>
      </div>
      <div class="input-box">
        <input type="password" placeholder="Enter your password" name="password"  required>
      </div>
      <div class="policy">
        <input type="checkbox" required>
        <h3>I accept all terms & condition</h3>
      </div>
      <div class="input-box button">
        <input type="Submit" value="Register Now">
      </div>
      <div class="text">
        <h3>Already have an account? <a href="C:\Users\CHAMA COMPUTERS\Desktop\W_PROJ\BckEnd_test\vehicalRental1\src\main\webapp\header.jsp">Login now</a></h3>
      </div>
    </form>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>