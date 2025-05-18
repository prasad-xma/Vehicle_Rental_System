package VehicleCategory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class AddVcategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddVcategoryServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Vcategory cat = new Vcategory();
		cat.setCatName(request.getParameter("catName"));
		
		VcategoryController service = new VcategoryController();
		service.addVehicleCat(cat);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("VcategoryDetailsServlet");
		dispatcher.forward(request, response);
	}

}
