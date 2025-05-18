package vOwnerManageByAdmin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class UpdateOwnerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateOwnerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VehicleOwner owner = new VehicleOwner();
		
		owner.setEmail(request.getParameter("email"));
		owner.setPassword(request.getParameter("password"));
		owner.setAddress(request.getParameter("address"));
		owner.setFirst_name(request.getParameter("first_name"));
		owner.setLast_name(request.getParameter("last_name"));
		owner.setUtype(request.getParameter("utype"));
		owner.setStatus(request.getParameter("status"));
		
		VehicleOwnerController service = new VehicleOwnerController();
		service.updateVehicleOwner(owner);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("SingleOwnerProfileServlet");
		dispatcher.forward(request, response);
		
		
	}

}
