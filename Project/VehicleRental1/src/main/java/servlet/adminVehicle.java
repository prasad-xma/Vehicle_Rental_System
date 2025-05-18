package servlet;

import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.owner;
import services.vehicleService;

import java.io.IOException;


public class adminVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public adminVehicle() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		
		vehicleService service = new vehicleService();
		ArrayList <owner>owner = service.getAllowner();
		
		request.setAttribute("owner", owner);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("vOwner/VehicleTable.jsp");
		dispatcher.forward(request, response);
	}

}

