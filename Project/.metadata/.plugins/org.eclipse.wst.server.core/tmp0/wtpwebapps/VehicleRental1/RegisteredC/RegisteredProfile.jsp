<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../styles/profile.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<%

HttpSession get1 = request.getSession();

String role = (String)get1.getAttribute("role");
String fname = (String)get1.getAttribute("fname");
String lname = (String)get1.getAttribute("lname");
String  address= (String)get1.getAttribute("address");
String  passw= (String)get1.getAttribute("pass");
String  mail= (String)get1.getAttribute("mail");
int  uid= (int)get1.getAttribute("uid");

%>

<%@include file="../includes/CHeader.jsp" %>


    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-3 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold"><%= fname %></span><span class="text-black-50"><%= mail %></span><span> </span></div>
            </div>
            <div class="col-md-5 border-right">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right">Profile Settings</h4>
                        
                    </div>
                    <form method="post" action="../updateServlet">
                    <div class="row mt-2">
                        <div class="col-md-6"><label class="labels">Name</label><input type="text" class="form-control" placeholder="first name" value="<%= fname %>" name = "fname" required></div>
                        <div class="col-md-6"><label class="labels">Surname</label><input type="text" class="form-control" value="<%= lname %>" placeholder="surname" name = "lname" required></div>
                    </div>
                    <div class="row mt-3">
                       
                        <div class="col-md-12"><label class="labels">Address</label><input type="text" class="form-control" placeholder="enter address line 2" value="<%= address %>" name="address" required></div>
                        <div class="col-md-12"><label class="labels">Email</label><input type="email" class="form-control" placeholder="enter address line 2" value="<%= mail %>" name="email" required></div>
                        <div class="col-md-12"><label class="labels">Password</label><input type="password" class="form-control" placeholder="enter address line 2" value="<%= passw %>" name="password" required></div>
                                            </div>
                                           
                   
                    <div class="mt-5 text-center"><input class="btn btn-primary profile-button" type="submit" value="Update profile" id="bt1"></div>
                    </form>
                </div>
            </div>
           
        </div>
    </div>
    </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    
    
    <script>
    
    document.getElementById("bt1").onclick = function(){

        alert("Your user profile has been updated!");
    }
    
    </script>
</body>
</html>