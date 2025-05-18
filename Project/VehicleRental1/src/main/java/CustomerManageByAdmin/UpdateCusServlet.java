package CustomerManageByAdmin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class UpdateCusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public UpdateCusServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerManage cus = new CustomerManage();
		
		cus.setEmail(request.getParameter("email"));
		cus.setPassword(request.getParameter("password"));
		cus.setAddress(request.getParameter("address"));
		cus.setFirst_name(request.getParameter("first_name"));
		cus.setLast_name(request.getParameter("last_name"));
		cus.setUtype(request.getParameter("utype"));
		cus.setStatus(request.getParameter("status"));
		
		CustomerService service = new CustomerService();
		service.updateCustomer(cus);
		
		RequestDispatcher dispacher = request.getRequestDispatcher("SingleCusDataServlet");
		dispacher.forward(request, response);
		
	}

}

