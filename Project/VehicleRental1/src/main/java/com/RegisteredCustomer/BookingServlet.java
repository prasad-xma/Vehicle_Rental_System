package com.RegisteredCustomer;

//import com.customer.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

 public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		vehicleS veh;
		String pdate = request.getParameter("pdate");
		String rdate = request.getParameter("rdate");
		String type = request.getParameter("type");
		String paddress = request.getParameter("paddress");
		String daddress = request.getParameter("daddress");
		
	

		
		try {
			
			HttpSession session = request.getSession();
			
			session.setAttribute("pickup_date", pdate);
			session.setAttribute("return_date", rdate);
			session.setAttribute("paddress", paddress);
			session.setAttribute("daddress", daddress);
			
		
		List<vehicleS> availableVhi = VehicleSearchDBUtill.searchVehi(pdate, rdate, type);
		
		request.setAttribute("av", availableVhi);
		
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("RegisteredC/availableV.jsp");
		
		dis.forward(request, response);

	}

}

