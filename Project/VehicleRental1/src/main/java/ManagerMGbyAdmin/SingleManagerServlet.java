package ManagerMGbyAdmin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class SingleManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public SingleManagerServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ManagerAd mng = new ManagerAd();
		mng.setEmail(request.getParameter("email"));
		ManagerAdController mngcont = new ManagerAdController();
		
		ManagerAd manager = mngcont.getSingleManager(mng);
		RequestDispatcher dispt = request.getRequestDispatcher("Admin/singleManagerProfile.jsp");
		request.setAttribute("manager", manager);
		
		dispt.forward(request, response);
	}

}
