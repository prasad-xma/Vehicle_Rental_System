package CustomerManageByAdmin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class SingleCusDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SingleCusDataServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerManage cus = new CustomerManage();
		cus.setEmail(request.getParameter("email"));
		CustomerService service = new CustomerService();
		
		CustomerManage customer = service.getSingleData(cus);
		RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/singleUserProfile.jsp");
		request.setAttribute("customer", customer);
		
		dispatcher.forward(request, response);
	}

}
