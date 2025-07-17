package com.oop.AutoPilotHub.Servlet;

import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.AutoPilotHub.Service.AddReservationController;
import com.oop.AutoPilotHub.Util.LoggerUtil;
import com.oop.AutoPilotHub.model.AddReservationModel;


@WebServlet("/DeleteReservationServlet")
public class DeleteReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final Logger logger = LoggerUtil.getLogger(DeleteReservationServlet.class.getName());
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		logger.info("Received request to delete reservation with ID: " + id);logger.info("Received request to delete reservation with ID: " + id);
		boolean isTrue;
		
		isTrue = AddReservationController.deletedata(id);
		
		if(isTrue == true) {

			logger.info("Task with ID " + id + " deleted successfully.");
            String alertMessage = "Data Delete Successful";
            response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='GetSingleReservationServlet?id=" + id + "'</script>");
            
		}else {
			List<AddReservationModel> reservationList = AddReservationController.getById(id);
            request.setAttribute("reservationList", reservationList);
            
		    RequestDispatcher dis2 = request.getRequestDispatcher("AddReservation.jsp");
		    dis2.forward(request, response);
		}
	}

}
