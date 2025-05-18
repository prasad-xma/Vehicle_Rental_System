package VehicleCategory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


public class VcategoryDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public VcategoryDetailsServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		VcategoryController service = new VcategoryController();
		ArrayList<Vcategory> vcat = service.getAllCategory();
		request.setAttribute("category", vcat);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/categoryDetails.jsp");
		dispatcher.forward(request, response);
	}

}
