package ManagerMGbyAdmin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class ManagerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ManagerUpdateServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ManagerAd mng = new ManagerAd();
		
		mng.setEmail(request.getParameter("email"));
		mng.setPassword(request.getParameter("password"));
		mng.setAddress(request.getParameter("address"));
		mng.setFirst_name(request.getParameter("first_name"));
		mng.setLast_name(request.getParameter("last_name"));
		mng.setUtype(request.getParameter("utype"));
		mng.setStatus(request.getParameter("status"));
		
		ManagerAdController service = new ManagerAdController();
		service.updateManager(mng);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("SingleManagerServlet");
		dispatcher.forward(request, response);
		
	}

}

