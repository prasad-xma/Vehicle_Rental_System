package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class forgetPass_Servlet
 */
public class forgetPass_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		
		
		boolean valids = customerDBUtill.passValid(email);
		
		
		if(valids == true) {
			
				boolean password_up = customerDBUtill.forgetPassword(pass, email);
				
				RequestDispatcher dis =  request.getRequestDispatcher("landing2.jsp");
				dis.forward(request, response);
				
			}
			
			else {
				RequestDispatcher dis2 =  request.getRequestDispatcher("register_un.jsp");
				dis2.forward(request, response);
				
			}
	}

}
