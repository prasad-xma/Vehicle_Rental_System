package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		
		List<customer> cusDetails =  new ArrayList<customer>();
		String role = null;
		String fname = null;
		String lname = null;
		String address = null;
		String pass = null;
		String mail = null;
		int uid = 0;
		
		try {
		
		cusDetails = customerDBUtill.validate(email, password);
		
		
		for(customer val : cusDetails) {
			role = val.toString();
			fname = val.getFname();
			lname = val.getLname();
			address = val.getAddress();
			pass = val.getPassword();
			mail = val.getEmail();
			uid  = val.getUserID();
		}
		
		HttpSession info1 = request.getSession();
		
		info1.setAttribute("role", role);
		info1.setAttribute("fname", fname);
		info1.setAttribute("lname", lname);
		info1.setAttribute("address", address);
		info1.setAttribute("pass", pass);
		info1.setAttribute("mail", mail);
		info1.setAttribute("uid", uid);

		
		request.setAttribute("cusDetails", cusDetails);
		
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		finally {
			
			RequestDispatcher dis;
			
		if("customer".equals(role)) {
		
		 dis = request.getRequestDispatcher("RegisteredC/booking.jsp");
		

		
		}
		
		else if("vowner".equals(role)) {
		 dis = request.getRequestDispatcher("vOwner/home.jsp");
			

		}
		
		else if("admin".equals(role)) {
			 dis = request.getRequestDispatcher("Admin/AdminDash.jsp");
				

			}
		
		else if("manager".equals(role)) {
			 dis = request.getRequestDispatcher("manager/ManagerDash.jsp");
				

			}
		
		else {
			
			dis = request.getRequestDispatcher("Invalid.jsp");
			
			
		}
		dis.forward(request, response);
		
		}
		
		
		

	}
	
	

}