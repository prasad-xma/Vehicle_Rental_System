package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Util.OfferUtil;

import java.io.IOException;
import java.io.PrintWriter;


public class AddOfferServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AddOfferServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String offerName = request.getParameter("ofname");
		String category = request.getParameter("category");
		String description = request.getParameter("ofdescription");
		String ofstdate = request.getParameter("ofstdate");
		String ofendate = request.getParameter("ofendate");
		
		
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
		
		System.out.println(offerName);
		
		boolean isSucess;
		
		isSucess = OfferUtil.addOffer(offerName,category,description,ofstdate,ofendate);
		
		if(isSucess== true) {
			
	        // HTML and JavaScript code to display an alert box
	        out.println("<html>");
	        out.println("<head><title>Offer</title></head>");
	        out.println("<body>");
	        out.println("<script type='text/javascript'>");
	        out.println("alert('Offer Added successfully');");
	        out.println("</script>");
	        out.println("</body>");
	        out.println("</html>");
			
		}
		else {
			out.println("<html>");
	        out.println("<head><title>Offer</title></head>");
	        out.println("<body>");
	        out.println("<script type='text/javascript'>");
	        out.println("alert('couldnt add offer');");
	        out.println("</script>");
	        out.println("</body>");
	        out.println("</html>");
			
		}
	}

}