package VehicleCategory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class UpdateVcatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateVcatServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Vcategory vc = new Vcategory();
		vc.setCatID(Integer.parseInt(request.getParameter("catID")));
		vc.setCatName(request.getParameter("catName"));
		
		VcategoryController service = new VcategoryController();
		service.updateVcategory(vc);
		
		RequestDispatcher dis = request.getRequestDispatcher("Admin/VcategoryDetailsServlet");
		dis.forward(request, response);
	}

}
