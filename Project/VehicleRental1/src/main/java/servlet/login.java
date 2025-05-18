package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.owner;
import services.vehicleService;

import java.io.IOException;


public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public login() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		owner own = new owner();
		
		own.setRegistrationNo(request.getParameter("registrationNo"));
		
		own.setVoId(Integer.parseInt(request.getParameter("voId")));
		
		
		vehicleService service = new vehicleService();
		boolean status = service.validate(own);
		
		if(status) {
			//19.service class eke getone metode eka hara own object eka check wenwa
			owner loginedOwn = service.getOne(own);
			RequestDispatcher dispatcher = request.getRequestDispatcher("vOwner/profile.jsp");
			
			//20.methana ""assata denne profile.jsp file eke value eke nama 
			request.setAttribute("owner",loginedOwn);
			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("vOwner/login.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}