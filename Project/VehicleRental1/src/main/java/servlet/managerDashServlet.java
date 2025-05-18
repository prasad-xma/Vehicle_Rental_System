package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.BookingM;
import model.Offer;
import model.RegRequests;
import Util.ManagerDashUtil;
import Util.OfferUtil;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;


public class managerDashServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public managerDashServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        
        // Prepare some data (labels and values)
		Map<String, Object> data = new HashMap<>();;
		String[] labels = {"January", "February", "March", "April", "May", "June"};
		int[] values = {5, 12, 3, 14, 20, 15};
		
		data.put("labels", labels);
		data.put("values", values);
		
		String jsonData = new Gson().toJson(data);
		
		// Send the JSON data back to the client
		out.print(jsonData);
		out.flush();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		showRequests(request, response);
		
		//showBookings24(request,response);
		
	}

	
	
	private void showRequests(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    ArrayList<RegRequests> reg_reqs = ManagerDashUtil.getPending_Reg_req();
	    ArrayList<RegRequests> up_reqs = ManagerDashUtil.getPending_up_req();

	    request.setAttribute("reg_req", reg_reqs);
	    request.setAttribute("up_req", up_reqs);

	    RequestDispatcher dis = request.getRequestDispatcher("manager/ManagerDash.jsp");
	    dis.forward(request, response);
	}
/*
	private void showUpdateReq(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<RegRequests> up_reqs = new ArrayList<>();
		System.out.println(up_reqs);
		up_reqs = ManagerDashUtil.getPending_up_req();
		request.setAttribute("up_req",up_reqs );
		
		RequestDispatcher dis= request.getRequestDispatcher("ManagerDash.jsp");
		dis.forward(request, response);
		
	}

	private void showRegReq(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<RegRequests> reg_reqs = new ArrayList<>();
		reg_reqs = ManagerDashUtil.getPending_Reg_req();
		request.setAttribute("reg_req",reg_reqs );
		
		RequestDispatcher dis= request.getRequestDispatcher("ManagerDash.jsp");
		dis.forward(request, response);
		
		
	}
	/*
	private void showBookings24(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<BookingM> book = new ArrayList<>();
		book = ManagerDashUtil.getBookings();
		request.setAttribute("reg_req",book);
		
		RequestDispatcher dis= request.getRequestDispatcher("ManagerDash.jsp");
		dis.forward(request, response);
		
	}*/

}