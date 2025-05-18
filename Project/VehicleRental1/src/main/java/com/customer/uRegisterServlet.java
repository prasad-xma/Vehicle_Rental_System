package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

 public class uRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String utype = request.getParameter("utype");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		
		
		boolean valids = customerDBUtill.RegisterValidation(email, pass);
		
		
	if(valids == true) {
		
			boolean user_insert = customerDBUtill.userInsert(utype, fname, lname, email, pass, address);
			
			
			
			RequestDispatcher dis =  request.getRequestDispatcher("landing2.jsp");
			dis.forward(request, response);
			
		}
		
		else {
			RequestDispatcher dis2 =  request.getRequestDispatcher("register_un.jsp");
			dis2.forward(request, response);
			
		}

	}

}
