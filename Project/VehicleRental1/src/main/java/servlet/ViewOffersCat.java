package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Offer;
import Util.OfferUtil;

import java.io.IOException;
import java.util.ArrayList;


public class ViewOffersCat extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ViewOffersCat() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("cato");
		System.out.println(type);
		switch(type) {
		  case "w":
			  ArrayList<Offer> wofferDetails = OfferUtil.getWeeklyOfferDetails();
				request.setAttribute("offers",wofferDetails);
				
				RequestDispatcher wdis = request.getRequestDispatcher("manager/Manger(offers).jsp");
				wdis.forward(request, response);
		    break;
		  case "m":
			  ArrayList<Offer> mofferDetails = OfferUtil.getMonthlyOfferDetails();
				request.setAttribute("offers",mofferDetails);
				
				RequestDispatcher mdis = request.getRequestDispatcher("manager/Manger(offers).jsp");
				mdis.forward(request, response);
		    break;
		    
		    
		  case "l":
			  ArrayList<Offer> lofferDetails = OfferUtil.getLoyalOfferDetails();
				request.setAttribute("offers",lofferDetails);
				
				RequestDispatcher ldis = request.getRequestDispatcher("manager/Manger(offers).jsp");
				ldis.forward(request, response);
		    break;
		  default:
			  break;
		}
	}

}
