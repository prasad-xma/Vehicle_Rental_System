package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Util.OfferUtil;

import java.io.IOException;
import java.io.PrintWriter;


public class DeleteOfferServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DeleteOfferServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int  id = Integer.parseInt(request.getParameter("id"));
		int r = OfferUtil.deleteOffer(id);
		if(r!=0) {
			out.println("<html>");
	        out.println("<head><title>Deletion</title></head>");
	        out.println("<body>");
	        out.println("<script type='text/javascript'>");
	        out.println("alert('Deleted');");
	        out.println("</script>");
	        out.println("</body>");
	        out.println("</html>");
		}
		
		response.sendRedirect("manager/Manger(offers).jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}