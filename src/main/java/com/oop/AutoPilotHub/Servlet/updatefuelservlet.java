package com.oop.AutoPilotHub.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.AutoPilotHub.Service.fuelController;
import com.oop.AutoPilotHub.Util.ValidateFuelStockInput;
import com.oop.AutoPilotHub.model.fuelModel;


@WebServlet("/updatefuelservlet")
public class updatefuelservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String fuel_type = request.getParameter("fuel_type");
        double quantity = Double.parseDouble(request.getParameter("quantity"));
        String supplier = request.getParameter("supplier");
        double unit_price = Double.parseDouble(request.getParameter("unit_price"));
        java.sql.Date delivery_date = java.sql.Date.valueOf(request.getParameter("delivery_date"));
        
        
     // Validate phone number and preferred date
        
        if(!ValidateFuelStockInput.validateQuantity(quantity)) {
        	response.getWriter().println("<script>alert('Quantity must be greater than zero.'); window.history.back();</script>");
        	return;
        }
        
        if(!ValidateFuelStockInput.validateUnitPrice(unit_price)){
        	response.getWriter().println("<script>alert('Unit price must be greater than zero.'); window.history.back();</script>");
        	return;
        }
        
        if(!ValidateFuelStockInput.validateDeliveryDate(delivery_date)){
        	response.getWriter().println("<script>alert('Delivery date cannot be in the future.'); window.history.back();</script>");
        	return;
        }
        
        
        boolean isTrue;
        isTrue=fuelController.updatedata(id, fuel_type, quantity, supplier, unit_price, delivery_date);
        
        if (isTrue == true) {
        	List <fuelModel> fueldetails =fuelController.getById(id);
        	request.setAttribute("fueldetails", fueldetails);
        	
        	String alertMessage = "Data Update Successful";
            response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='fuelGetAllservlet?id=" + id + "'</script>");
            
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
            dis2.forward(request, response);
        }
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
