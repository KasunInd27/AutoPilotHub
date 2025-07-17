package com.oop.AutoPilotHub.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.AutoPilotHub.Service.AddReservationController;
import com.oop.AutoPilotHub.Util.ValidateReservationInput;
import com.oop.AutoPilotHub.model.AddReservationModel;

@WebServlet("/UpdateReservationServlet")
public class UpdateReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String full_name = request.getParameter("full_name");
		String phone_number = request.getParameter("phone_number");
		String email_address = request.getParameter("email_address");
		String vehicle_model = request.getParameter("vehicle_model");
		int year = Integer.parseInt(request.getParameter("year"));
		String license_plate = request.getParameter("license_plate");
		String service_type = request.getParameter("service_type");
		java.sql.Date preferred_date = java.sql.Date.valueOf(request.getParameter("preferred_date"));
		java.sql.Time preferred_time = java.sql.Time.valueOf(request.getParameter("preferred_time"));
		
        // Validate phone number and preferred date
        
        if(!ValidateReservationInput.validatePhoneNumber(phone_number)) {
        	response.getWriter().println("<script>alert('Phone number must be 10 digits.'); window.history.back();</script>");
        	return;
        }
        
        if(!ValidateReservationInput.validatePreferredDate(preferred_date)){
        	response.getWriter().println("<script>alert('Preferred date cannot be in the past.'); window.history.back();</script>");
        	return;
        }
		
		
		boolean isTrue;
		isTrue = AddReservationController.updatedata(id, full_name, phone_number, email_address, vehicle_model, year, license_plate, service_type, preferred_date, preferred_time);
		
		if(isTrue) {
			List<AddReservationModel> reservationList = AddReservationController.getById(id);
            request.setAttribute("reservationList", reservationList);
		    
            String alertMessage = "Data Update Successful";
            response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='GetSingleReservationServlet?id=" + id + "'</script>");
			
		} else {
		    RequestDispatcher dis2 = request.getRequestDispatcher("AddReservation.jsp");
		    dis2.forward(request, response);
		}
	}

}
