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


public class deleteVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deleteVehicle() {
        super();
 
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		owner own = new owner();
		own.setVid(Integer.parseInt(request.getParameter("vid")));
		
		vehicleService service = new vehicleService();
		service.deleteVehicle(own);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminVehicle");
		dispatcher.forward(request, response);
	}

}
