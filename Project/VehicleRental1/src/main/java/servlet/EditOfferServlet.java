package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Util.OfferUtil;

import java.io.IOException;
import java.io.PrintWriter;


public class EditOfferServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public EditOfferServlet() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String end = request.getParameter("ofendate");
		
		int r = OfferUtil.updateOffer(id,end);
		if(r!=0) {
			RequestDispatcher dis = request.getRequestDispatcher("manager/Manger(offers).jsp");
			dis.forward(request, response);
		}
		else {
			PrintWriter out = response.getWriter();
			out.println("<html>");
	        out.println("<head><title>Edit</title></head>");
	        out.println("<body>");
	        out.println("<script type='text/javascript'>");
	        out.println("alert('Couldnt edit offer');");
	        out.println("</script>");
	        out.println("</body>");
	        out.println("</html>");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}