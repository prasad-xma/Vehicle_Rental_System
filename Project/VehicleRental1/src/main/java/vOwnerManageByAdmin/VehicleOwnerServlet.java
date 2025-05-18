package vOwnerManageByAdmin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


public class VehicleOwnerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public VehicleOwnerServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		VehicleOwnerController service = new VehicleOwnerController();
		ArrayList<VehicleOwner> owner = service.getAllOwners();
		request.setAttribute("owner", owner);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/ownerDetails.jsp");
		
		dispatcher.forward(request, response);
	}

}
