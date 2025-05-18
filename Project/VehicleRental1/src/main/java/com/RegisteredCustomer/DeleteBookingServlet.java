package com.RegisteredCustomer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class DeleteBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public DeleteBookingServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		 
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String bookingId = (String)request.getParameter("ids");
		 
		 boolean isTrue;
		 
		 isTrue = bookingDBUtill.DeleteBookings(bookingId);
		 
		 if(isTrue == true) {
			 
			 RequestDispatcher dis1 =  request.getRequestDispatcher("RegisteredC/cancell_sucjsp.jsp");
				dis1.forward(request, response);
			 
		 }
		 
		 else {
			 
			 RequestDispatcher dis2 =  request.getRequestDispatcher("RegisteredC/myR(refresh).jsp");
			 dis2.forward(request, response);
			 
		 }
		 
		 
		 
		 
		 

		//doGet(request, response);
	}

}
