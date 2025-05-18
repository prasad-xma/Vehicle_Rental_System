<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Book</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   <link rel="stylesheet" href="../styles/header.css">
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
                <a class="nav-link active hdr" href="RegisteredC/RegisteredProfile.jsp">View profile</a>
              </li>

              <li class="nav-item">
                <a class="nav-link active hdr" href="RegisteredC/myR(refresh).jsp">Dashboard</a>
              </li>
           

         
           
            </ul>
            
             <div class="mx-3">
              <button type="button" class="btn btn-primary" type="submit" data-bs-toggle="modal" data-bs-target="#exampleModal">Log-out</button>
              
            </div>
          </div>
        </div>
      </nav>

      <!--Header nav end-->





  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>