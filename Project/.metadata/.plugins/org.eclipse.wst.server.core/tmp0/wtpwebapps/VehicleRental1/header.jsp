<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header</title>
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
                <a class="nav-link active hdr" aria-current="page" href="#">Home</a>
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

              <!--Start of the login modal-->
              <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-body p-0">
                      <!--Login form-->


                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="position: absolute;right: 0;"></button>




                      <div>
                        <form  method="post" action="LoginServlet" class="container p-5 bg-dark text-white" style="width: 100%;">
                      
                          <h2 class="text-center">Sign in</h2>
                      
                          <label>
                            Email : 
                            </label><br>
                            <input type="email" class="form-control border-primary" id="email" placeholder="name@example.com" name="email" required><br>
                      
                            <label>
                              Password : 
                              </label>
                              <input type="password" class="form-control border-primary" id="pass"  placeholder="password" name="pass" required>
                      
                              <div class="my-4">
                              <div class="row text-center">
                      
                              <input class="btn btn-primary" type = "submit" name = "sub" value="Log-in"><br>
                              </div>
                              
                              <small style="float: right;"><a href="forgetPass.jsp" style="text-decoration: none;">forgot-password</a></small><br>
                              <small class="text-center" style="float: left;"><a href="UserRegistration.jsp"  class="text-center"  style="text-decoration: none;">Register user</a></small>
                              </div>
                      
                      
                      
                      
                          </form>
                      
                          </div>
                          
                          




                      <!--End of Login form-->
                    </div>
                  </div>
                </div>
              </div>

              <!--End of the login-->
              
            </div>
          </div>
        </div>
      </nav>

      <!--Header nav end-->

    




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>