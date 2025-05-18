package CustomerManageByAdmin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


public class CusManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public CusManageServlet() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerService service = new CustomerService();
		ArrayList<CustomerManage> customer = service.getAllCustomer(); 
		request.setAttribute("customer", customer);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/customerDetails.jsp");
		dispatcher.forward(request, response);
	}

}
