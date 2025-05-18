package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Util.ManagerDashUtil;

import java.io.IOException;
import java.io.PrintWriter;


public class Manager_up extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Manager_up() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("id"));
		String reqType = request.getParameter("type");
		System.out.println(id+reqType);
		
		if("reg-ac".equals(reqType) || "reg-dec".equals(reqType) || "up-ac".equals(reqType) || "up-dec".equals(reqType)) {
			updateReq(reqType,id,out);
		}
		
	}

	private void updateReq(String t,int id,PrintWriter out) {
		String type = "deactive";
		 if ("reg-ac".equals(t)) {
	           type = "Active";
	     }
		 else if ("reg-dec".equals(t)) {
	           type = "Deactive";
	     } 
		else if("up-ac".equals(t)) {
			type = "Active";
		}
		else if("up-dec".equals(t)) {
			type = "Deactive";
		}
		
		int r = ManagerDashUtil.changeVehicleStatus(type,id);
		if(r!=0) {
			out.println("<html>");
	        out.println("<head><title>Vehicle reuquest</title></head>");
	        out.println("<body>");
	        out.println("<script type='text/javascript'>");
	        out.println("alert('updated');");
	        out.println("</script>");
	        out.println("</body>");
	        out.println("</html>");
		}
		

		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
