<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="../styles/payment.css" rel="stylesheet">
    <link rel="stylesheet" href="../styles/header.css">
</head>
<body>


<%

	
	String description = request.getParameter("description");
	String amt = request.getParameter("amt");
	String passengers = request.getParameter("passengers");
	String rental = request.getParameter("rental");
	String ftype = request.getParameter("ftype");
	String brand = request.getParameter("brand");
	String tradeName = request.getParameter("tradeName");
	String vd = request.getParameter("vid");
	
	


	HttpSession ses = request.getSession();
	
	ses.setAttribute("vid", vd);
	


	String pdate = (String)ses.getAttribute("pickup_date");
	String rdate = (String)ses.getAttribute("return_date");
	String paddress = (String)ses.getAttribute("paddress");
	String daddress = (String)ses.getAttribute("daddress");
	





	

%>


<%@include file="../includes/CHeader.jsp" %>




    <div class="container">
        <div class="row m-0">
            <div class="col-lg-7 pb-5 pe-lg-5">
                <div class="row">
                    <div class="col-12 p-5">
                        <img src="https://www.freepnglogos.com/uploads/honda-car-png/honda-car-upcoming-new-honda-cars-india-new-honda-3.png"
                            alt="">
                    </div>
                    <div class="row m-0 bg-light">
                        <div class="col-md-4 col-6 ps-30 pe-0 my-4">
                            <p class="text-muted">Transmission</p>
                            <p class="h5"><%= amt %><span class="ps-1"></span></p>
                        </div>
                        <div class="col-md-4 col-6  ps-30 my-4">
                            <p class="text-muted">Passengers</p>
                            <p class="h5 m-0"><%= passengers %></p>
                        </div>
                        <div class="col-md-4 col-6 ps-30 my-4">
                            <p class="text-muted"><%= ftype %></p>
                            <p class="h5 m-0">Petrol</p>
                        </div>
                        <div class="col-md-4 col-6 ps-30 my-4">
                            <p class="text-muted">Notes</p>
                            <p class="h5 m-0"><%= description %></p>
                        </div>
                       
  
                    </div>
                </div>
            </div>
            <div class="col-lg-5 p-0 ps-lg-4">
                <div class="row m-0">
                    <div class="col-12 px-4">
                        <div class="d-flex align-items-end mt-4 mb-2">
                            <p class="h4 m-0"><span class="pe-1"><%= brand %></span><span class="pe-1"><%= tradeName %></span>
                            </p>
                            <P class="ps-3 textmuted">1L</P>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <p class="textmuted">Pickup date:</p>
                            <p class="fs-14 fw-bold"><%= pdate %></p>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <p class="textmuted">End date:</p>
                            <p class="fs-14 fw-bold"><span class="fas fa-dollar-sign pe-1"></span><%= rdate %></p>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <p class="textmuted">Pick-up location:</p>
                            <p class="fs-14 fw-bold"><%= paddress %></p>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <p class="textmuted">Destination Location:</p>
                            <p class="fs-14 fw-bold"><span class="fas fa-dollar-sign px-1"></span><%= daddress %></p>
                        </div>

                        <div class="d-flex justify-content-between mb-2">
                            <p class="textmuted">Offers:</p>
                            <p class="fs-14 fw-bold">0</p>
                        </div>
                        <div class="d-flex justify-content-between mb-3">
                            <p class="textmuted fw-bold">Total</p>
                            <div class="d-flex align-text-top ">
                                <span class="fas fa-dollar-sign mt-1 pe-1 fs-14 "></span>RS. <span class="h4"><%= rental %></span>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Start Of Form -->
                    <form method = "post" action="../PaymentServlet">
                    <div class="col-12 px-0">
                        <div class="row bg-light m-0">
                            <div class="col-12 px-4 my-4">
                                <p class="fw-bold">Payment detail</p>
                            </div>
                            <div class="col-12 px-4">

                                <div class="d-flex  mb-4">

                                    
                                    <span class="">
                                        <p class="text-muted">Card type</p>
                                        <label>Visa</label>
                                        <input class="" type="radio" value="Visa" name="cardType" required>

                                        <label>Master</label>
                                        <input class="" type="radio" value="Master" name="cardType" required>
                                    </span>

                                    
                                   
                                </div>

                                
                                <div class="d-flex  mb-4">

                                    
                                    <span class="">
                                        <p class="text-muted">Payment</p>
                                        <input class="form-control" type="text" 
                                            placeholder="RS.20000" name="payment"  value="<%= rental %>" readonly>
                                    </span>

                                    
                                   
                                </div>





                                <div class="d-flex  mb-4">

                                    
                                    <span class="">
                                        <p class="text-muted">Card number</p>
                                        <input class="form-control" type="text" 
                                            placeholder="1234 5678 9012 3456" name="cardNo" required>
                                    </span>
                                    <div class=" w-100 d-flex flex-column align-items-end">
                                        <p class="text-muted">Expires</p>
                                        <input class="form-control2" type="text"  placeholder="MM/YYYY" name="exp" required>
                                    </div>
                                </div>
                                <div class="d-flex mb-5">
                                    <span class="me-5">
                                        <p class="text-muted">Cardholder name</p>
                                        <input class="form-control" type="text" 
                                            placeholder="Name" name="chname" required>
                                    </span>
                                    <div class="w-100 d-flex flex-column align-items-end">
                                        <p class="text-muted">CVC</p>
                                        <input class="form-control3" type="text"  placeholder="XXX" name="cvc" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row m-0">
                            <div class="col-12  mb-4 p-0">
                                <button type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#exampleModal">Purchase
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Start of Modal -->
                    
                    
                    <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Do you wanna Book?</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
        <input type="submit" class="btn btn-primary" value="Yes">
      </div>
    </div>
  </div>
</div>
                    
                    
                    
                    
                    
                    
                    
                    
                    <!-- End of Modal -->
                    </form>
                    <!-- End form -->
                    
                    
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>