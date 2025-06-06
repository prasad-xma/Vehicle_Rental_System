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


public class singleDataButton extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public singleDataButton() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		owner own = new owner();
		own.setVid(Integer.parseInt(request.getParameter("vid")));
		
		
		vehicleService service = new vehicleService();
		owner owner = service.singleDataButton(own);
		RequestDispatcher dispatcher = request.getRequestDispatcher("vOwner/profile.jsp");
		request.setAttribute("owner",owner);
		
		
		dispatcher.forward(request, response);
	}

}
