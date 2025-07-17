package com.oop.AutoPilotHub.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.AutoPilotHub.Service.Itemcontrol;
import com.oop.AutoPilotHub.Util.ValidateIteminputs; 


@WebServlet("/ItemInsertservlet")
public class ItemInsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
	
	    
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String itemname = request.getParameter("itemname");
	        int stockqty = Integer.parseInt(request.getParameter("stockqty"));
	        int reorderamount = Integer.parseInt(request.getParameter("reorderamount"));
	        String lastupdated = request.getParameter("lastupdated");

	        // Validate item name uniqueness
	        if (!ValidateIteminputs.isItemNameUnique(itemname)) {
	            response.getWriter().println("<script>alert('This item name was already recorded earlier. Please use a different name.'); window.history.back();</script>");
	            return;
	        }

	       
	    


	    // Validate Date
	    if (!ValidateIteminputs.isValidDate(lastupdated)) {
	        response.getWriter().println("<script>alert('Invalid date format! Use dd/mm/yyyy or dd/mm/yy.'); window.history.back();</script>");
	        return;
	    }

	 // Validate item name uniqueness
	    if (!ValidateIteminputs.isItemNameUnique(itemname)) {
	        response.getWriter().println("<script>alert('This item name was already recorded earlier. Please use a different name.'); window.history.back();</script>");
	        return;
	    }



		
		boolean isTrue;
		
		isTrue = Itemcontrol.insertdata( itemname, stockqty, reorderamount,  lastupdated); 
		
		if(isTrue == true) {
			String alertMessage = "Data Insert Successful";
			response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='Itemgetall'</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}