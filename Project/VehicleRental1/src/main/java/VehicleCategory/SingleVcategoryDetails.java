package VehicleCategory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



public class SingleVcategoryDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SingleVcategoryDetails() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Vcategory vcat = new Vcategory();
		vcat.setCatID(Integer.parseInt(request.getParameter("catID")));
		
		VcategoryController service = new VcategoryController();
		
		Vcategory cat = service.getSingleVcat(vcat);
		RequestDispatcher dis = request.getRequestDispatcher("Admin/singleVehicleCategory.jsp");
		request.setAttribute("category", cat);
		
		dis.forward(request, response);
	}

}

