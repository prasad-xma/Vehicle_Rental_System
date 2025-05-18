package ManagerMGbyAdmin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


public class ManagerDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ManagerDetailsServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ManagerAdController service = new ManagerAdController();
		ArrayList<ManagerAd> mng = service.getAllManagers();
		request.setAttribute("manager", mng);
		
		RequestDispatcher dspt = request.getRequestDispatcher("Admin/managerDetails.jsp");
		dspt.forward(request, response);
	
	}

}
