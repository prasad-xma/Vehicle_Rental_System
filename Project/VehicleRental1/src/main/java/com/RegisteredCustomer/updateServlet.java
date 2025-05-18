package com.RegisteredCustomer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class updateServlet
 */
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession s2 = request.getSession();
		
		
		int id = (int)s2.getAttribute("uid");
		String fname = request.getParameter("fname");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String lname = request.getParameter("lname");
		String pass = request.getParameter("password");
		
		boolean updt = RegisteredDBUtill.updateProfile(id, fname, lname, address, email, pass);
		
		RequestDispatcher dis1;
		
		if(updt==true) {
			
		
			
			dis1 =  request.getRequestDispatcher("RegisteredC/RegisteredProfile.jsp");
		
		}
		
		else {
			 dis1 =  request.getRequestDispatcher("unsuccess.jsp");
		
		}
		dis1.forward(request, response);
	}

}
