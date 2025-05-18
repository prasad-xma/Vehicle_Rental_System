<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rent-ME</title>
    <!-- link css file -->
    <link rel="stylesheet" href="css/style.css">

    <!-- link to favicon -->
    <link rel="shortcut icon" href="https://img.icons8.com/?size=100&id=111270&format=png&color=000000" type="image/x-icon"> 

    <!-- link css media screen file for responsive website  -->
    <link rel="stylesheet" href="css/screen.css">

    <!-- link text css file for test some css parts  -->
    <link rel="stylesheet" href="css/test.css">
    
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

    <!-- Navigation bar -->
 

    <div class="image" id="bgImage">
    <div>

</div>
        <div class="image__cont" id="webHome">
            <p id="spacialFont">Vehicle Rental</p>

            <div class="relativep">
                <p id="pcaption">Rent-ME Rentals</p>
            </div>
            <p id="pcaption__2" style="font-variant-caps: all-petite-caps;">Unleash your journey with our top-tier vehicle rental services!</p>
        </div>
    </div>

    <div class="main">

        <div class="aboutUS" id="about">
            <p class="aboutUS__hd">
                About Us 
            </p>
            <h1 class="aboutUS__cont">
                WELCOME TO Rent-ME RENTALS
            </h1>
        </div>

        <div class="clear">
            <div class="about__content">
                <div class="about__content__img">
                    <img src="https://th.bing.com/th/id/R.358f5cc8a0ccd68e17ab4f6ced8e38da?rik=B0V9gdbqy%2bxacA&pid=ImgRaw&r=0" alt="vehicle" class="image__about__cont">
                </div>

                <div class="about__content__cont">
                    <h2>Rent-ME Rentals offers premium vehicle rentals that combine luxury, safety, and exceptional service.</h2>

                    <p style="padding-top: 5px; font-size: 1.3rem;">
                        Whether you're looking for a classic ride or modern comfort, our curated fleet caters to your every need. With a focus on customer satisfaction and high-quality standards, we strive to make every journey an unforgettable experience.
                    </p>

                    <div class="about__content__para">
                        <div class="para1">
                            <div class="orangebox"><div class="orangebox__inner"></div></div>
                            <h1>100% SAFETY</h1>
                            <p>
                                At Rent-ME Rentals, safety is our top priority. Each vehicle in our fleet is meticulously inspected and maintained to ensure it meets all safety regulations.
                                Whether you're commuting or on a weekend getaway, you can trust that our vehicles provide the security and peace of mind you deserve.
                            </p>
                        </div>

                        <div class="para2">
                            <div class="orangebox"><div class="orangebox__inner"></div></div>
                            <h1>AWARD WINNING</h1>
                            <p>
                                Our service speaks for itself. EliteRide Rentals has been recognized by industry experts for excellence in customer satisfaction, vehicle quality, and innovative solutions.
                                Experience the best in class with our award-winning rental service.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- <div class="rating-js">
             THIS PART HAVE TO PROGRAM IN FUTURE
        </div> -->

        <div class="cake-content" id="catogeries">

            <div class="cake-box card1">
                <h2>LUXURY CARS</h2>
                <p>
                    Drive in style with our premium collection of luxury cars, perfect for making an impression at any event.
                    Experience unmatched comfort designed for those who seek the best
                </p>
            </div>
            <div class="cake-box card2">
                <h2>FAMILY CARS</h2>
                <p>
                    Planning a family trip? Our spacious and comfortable family cars ensure everyone enjoys the ride.
                    With ample room and safety features, you can travel stress-free with your loved ones.
                </p>
            </div>
            <div class="cake-box card3">
                <h2>CUSTOM RIDES</h2>
                <p>
                    Have a specific vehicle in mind? Our custom ride options let you choose the perfect car for any occasion.
                    Tailor your rental experience to meet your needs, whether it’s a unique event or a special day
                </p>
            </div>

        </div>

        <div class="aboutUS" id="chefs">
            <p class="aboutUS__hd team-m">
                Team Members
            </p>
            <h1 class="aboutUS__cont">
                OUR RENTAL EXPERTS
            </h1>
        </div>

        <div class="chefs-container">

            <div class="chef__one chefss">
                <div class="image-chef chef1">
                    <!-- <img src="/img/chef/team-2.jpg" alt="Main chef"> -->
                </div>

                <div class="caption">
                    <h2>SAMAN BANDARA</h2>
                    <p>Saman expertly manages our fleet of vehicles, ensuring all cars, vans, and trucks are maintained and ready for your next journey.</p>
                </div>
                <div class="chef-box">
                    <div class="chef-box__inner">
                        <h2>SAMAN.B.A.H</h2>
                        <p>-Fleet Manager-</p>
                    </div>
                </div>
            </div>

            <div class="chef__two chefss">
                <div class="image-chef chef2">
                    <!-- <img src="/img/chef/team-2.jpg" alt="Main chef"> -->
                </div>
                
                <div class="caption">
                    <h2>SHALANI HERATH</h2>
                    <p>Shalani ensures smooth booking and customer satisfaction, providing top-notch service for all your rental needs.</p>
                </div>
                <div class="chef-box">
                    <div class="chef-box__inner">
                        <h2>SHALANI.HN</h2>
                        <p>-Customer Support Specialist-</p>
                    </div>
                </div>
            </div>

            <div class="chef__three chefss">
                <div class="image-chef chef3"></div>

                <div class="caption">
                    <h2>MIYANTHI KALHARI</h2>
                    <p>Miyanthi coordinates operations across all our branches, ensuring every rental goes off without a hitch, from pickup to return.</p>
                </div>
                <div class="chef-box">
                    <div class="chef-box__inner">
                        <h2>MAYANTHI.K</h2>
                        <p>-Operations Supervisor-</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="special-cake">
            <!--background image -->
            <div class="special-cake__content">
                <!-- dark opacity 0.6 background  -->
                <div class="special-cake__cont__hd">
                    <!-- content  -->
                    <h2>Special Limited Offer</h2>
                    <h1>RENT 3 DAYS, GET 1 DAY FREE</h1>
                    <p style="font-size: 1.3rem;">
                        Looking for unbeatable value? Rent any vehicle for 3 days
                        and enjoy the 4th day absolutely FREE! Don’t miss out on this exclusive offer, perfect for road trips, business travel, or a quick getaway.
                    </p>
                </div>

                <div class="special-cake__btn">
                    <!-- shop now button  -->
                    <div class="btn__inside">
                        <a href="#">
                            <span>Book Now</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="aboutUS" id="chefs">
            <p class="aboutUS__hd team-m">
                Testimonial
            </p>
            <h1 class="aboutUS__cont">
                OUR CLIENTS SAY!!!
            </h1>
        </div>
 
        <div class="testimonio">

            <div class="container">

                <div class="indicator">
                    <span class="slid__btn slid-active"></span>
                    <span class="slid__btn"></span>
                    <span class="slid__btn"></span>
                    <span class="slid__btn"></span>
                </div>

                <div class="slider-content">

                    <div class="slider" id="slide">

                        <div class="slider__inside">
        
                            <div class="slider__inside__text">
                                <p>
                                    "Renting with Rent-ME was a breeze! The car was in perfect condition, and the service was excellent. Will definitely use them again!"
                                </p>
                                <h3>SOPHIA</h3>
                            </div>
                            <div class="slider__inside__img slider__image1">
                                <!-- <img src="https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg" alt="first Commenter"> -->
                            </div>
        
                        </div>
        
                        <div class="slider__inside">
        
                            <div class="slider__inside__text">
                                <p>
                                    "I rented a van for my moving day, and it was super affordable. The team was helpful, and the whole process was seamless. Highly recommended!"
                                </p>
                                <h3>OLIVER</h3>
                            </div>
                            <div class="slider__inside__img slider__image2">
                                <!-- <img src="https://media.istockphoto.com/id/1296158947/photo/portrait-of-creative-trendy-black-african-male-designer-laughing.jpg?s=612x612&w=0&k=20&c=1Ws_LSzWjYvegGxHYQkkgVytdpDcnmK0upJyGOzEPcg="> -->
                            </div>
        
                        </div>
        
                        <div class="slider__inside">
        
                            <div class="slider__inside__text">
                                <p>"Great variety of cars and the best deals in town. The customer service team went above and beyond to ensure my rental went smoothly."</p>
                                <h3>ETHAN</h3>
                            </div>
                            <div class="slider__inside__img slider__image3">
                                <!-- <img src="https://images4.alphacoders.com/262/262196.jpg"> -->
                            </div>
        
                        </div>
        
                        <div class="slider__inside">
        
                            <div class="slider__inside__text">
                                <p>
                                    "Great variety of cars and the best deals in town. The customer service team went above and beyond to ensure my rental went smoothly."
                                </p>
                                <h3>ISABELLA</h3>
                            </div>
                            <div class="slider__inside__img slider__image4">
                                <!-- <img src="/img/Comments/testimonial-4.jpg" alt="first Commenter"> -->
                            </div>
        
                        </div>
        
                    </div>

                </div>

            </div>

        </div>

    </div>

    <div class="footer">
        
    </div>

    <!-- link JavaScript file -->
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="js/main.js"></script>
</body> 
</html>