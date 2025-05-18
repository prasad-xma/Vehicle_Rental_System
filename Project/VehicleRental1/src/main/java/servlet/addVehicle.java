package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.owner;
import services.vehicleService;

import java.io.IOException;


public class addVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public addVehicle() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		owner own = new owner();
		//own.setVid(Integer.parseInt(request.getParameter("vid")));
		own.setDescription(request.getParameter("description"));
		own.setRegistrationNo(request.getParameter("registrationNo"));
		own.setAmt(request.getParameter("amt"));
		own.setAdded_date(request.getParameter("added_date"));
		own.setCatid(Integer.parseInt(request.getParameter("catid")));
		own.setFtype(request.getParameter("ftype"));
		own.setPassengers(Integer.parseInt(request.getParameter("passengers")));
		own.setRentalprice(Integer.parseInt(request.getParameter("rentalprice")));
		own.setImage(request.getParameter("image"));
		own.setRating(Integer.parseInt(request.getParameter("rating")));
		own.setStatus(request.getParameter("status"));
		own.setVoId(Integer.parseInt(request.getParameter("voId")));
		own.setTradeName(request.getParameter("tradeName"));
		own.setBrand(request.getParameter("brand"));
		
		vehicleService service =new vehicleService();
		service.regvehicle(own);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("vOwner/home.jsp");
		dispatcher.forward(request, response);
	}

}
