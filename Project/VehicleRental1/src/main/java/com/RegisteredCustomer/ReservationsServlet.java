package com.RegisteredCustomer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;


public class ReservationsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sesson = request.getSession();
		
		int uid =  (int)sesson.getAttribute("uid");
		
		
		try {
			
			List<booking> books = bookingDBUtill.bdetails(uid);
			
			request.setAttribute("bookingDets", books);
			
			}
			
			catch(Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("RegisteredC/myReservations.jsp");
			
			dis.forward(request, response);
		
		
	}

}

