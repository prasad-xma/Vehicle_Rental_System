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
 * Servlet implementation class PaymentServlet
 */
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cardType = request.getParameter("cardType");
		double payment = Double.parseDouble(request.getParameter("payment"));
		String cardNo = request.getParameter("cardNo");
		String chname = request.getParameter("chname");
		String cvc = request.getParameter("cvc");
		String exp = request.getParameter("exp");
		
		
		

		HttpSession session5 = request.getSession();

		String pdate = (String)session5.getAttribute("pickup_date");
		String rdate = (String)session5.getAttribute("return_date");
		String paddress = (String)session5.getAttribute("paddress");
		String daddress = (String)session5.getAttribute("daddress");
		
		String veid =  (String)session5.getAttribute("vid");
		int uid =  (int)session5.getAttribute("uid");
		
		
		
		
		boolean insrt_booking = bookingDBUtill.insert(veid, paddress, daddress, pdate, rdate, uid);
		
		//boolean insrt_rent = bookingDBUtill.insert_rent(uid, veid);
		
		boolean insrt_payment = paymentDBUtill.insert(cardNo,payment, cardType, cvc, chname,  exp);
		
		if(insrt_booking ==true && insrt_payment ==true /*&& insrt_rent == true*/) {
			
			RequestDispatcher dis =  request.getRequestDispatcher("RegisteredC/myR(refresh).jsp");
			dis.forward(request, response);
			
		}
		
		else {
			RequestDispatcher dis2 =  request.getRequestDispatcher("RegisteredC/p_uns.jsp");
			dis2.forward(request, response);
			
		}
		
		

			
			RequestDispatcher dis3 =  request.getRequestDispatcher("not_c.jsp");
			dis3.forward(request, response);
			

		
	}
	}
