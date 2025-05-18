package vOwnerManageByAdmin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class DeleteVehicleOwnerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public DeleteVehicleOwnerServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VehicleOwner ow = new VehicleOwner();
		ow.setEmail(request.getParameter("email"));
		
		VehicleOwnerController service = new VehicleOwnerController();
		service.deleteVehicleOwner(ow);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/VehicleOwnerServlet");
		dispatcher.forward(request, response);
		
	}

}

