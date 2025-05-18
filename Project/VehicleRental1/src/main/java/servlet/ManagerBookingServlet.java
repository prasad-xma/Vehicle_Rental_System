package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.BookingM;
import model.Offer;
import Util.MnagerBookings;
import Util.OfferUtil;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


public class ManagerBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ManagerBookingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String what = request.getParameter("what");
		int id = Integer.parseInt(request.getParameter("ids")) ;
		PrintWriter out = response.getWriter();
		
		if("decline".equals(what)) {
			 deActivateBooking(id,out);
		}
		else if("delete".equals(what)){
			 deleteBooking(id,out);
		}
		
		response.sendRedirect("manager/manager(bookings).jsp");
	}

	
	private void deleteBooking(int i,PrintWriter out) {
		int r = MnagerBookings.deleteBooking(i);
		if(r!=0) {
			out.println("<html>");
	        out.println("<head><title>Vehicle reuquest</title></head>");
	        out.println("<body>");
	        out.println("<script type='text/javascript'>");
	        out.println("alert('Deleted');");
	        out.println("</script>");
	        out.println("</body>");
	        out.println("</html>");	
		}
		
	}


	private void deActivateBooking(int i,PrintWriter out) {
		
		int r = MnagerBookings.deactivateBooking(i);
		
		if(r!=0) {
			out.println("<html>");
	        out.println("<head><title>Vehicle reuquest</title></head>");
	        out.println("<body>");
	        out.println("<script type='text/javascript'>");
	        out.println("alert('deactivated');");
	        out.println("</script>");
	        out.println("</body>");
	        out.println("</html>");		
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		showActiveBookings(request,response);
		
	}


	private void showActiveBookings(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<BookingM> ab = MnagerBookings.getActiveBookings();
		ArrayList<BookingM> fb = MnagerBookings.getFinishedBookings();
		request.setAttribute("actB",ab);
		request.setAttribute("finB",fb);
		
		RequestDispatcher dis = request.getRequestDispatcher("manager/manager(bookings).jsp");
	    dis.forward(request, response);
		
	}


}
