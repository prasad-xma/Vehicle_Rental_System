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


public class ViewOffers extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ViewOffers() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Offer> offerDetails = OfferUtil.getOfferDetails();
		request.setAttribute("offers",offerDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("manager/Manger(offers).jsp");
		dis.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
