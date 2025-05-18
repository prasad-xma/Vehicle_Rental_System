package CustomerManageByAdmin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class DeleteCusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteCusServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerManage cus = new CustomerManage();
		cus.setEmail(request.getParameter("email"));
		
		CustomerService service = new CustomerService(); 
		service.deleteCustomer(cus);
		
		RequestDispatcher dispacher = request.getRequestDispatcher("CusManageServlet");
		
		dispacher.forward(request, response); 
	}

}
