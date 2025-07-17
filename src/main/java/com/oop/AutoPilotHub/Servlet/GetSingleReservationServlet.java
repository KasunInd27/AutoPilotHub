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
import com.oop.AutoPilotHub.model.AddReservationModel;

@WebServlet("/GetSingleReservationServlet")
public class GetSingleReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String id = request.getParameter("id");
    	System.out.println("Reservation ID: " + id);
    	
    	if (id == null || id.isEmpty()) {
    		System.out.println("No ID provided, redirecting to ReservationDetails.jsp");
    		response.sendRedirect(request.getContextPath() + "/ReservationDetails.jsp");
    		return;
    	}
    	
    	List<AddReservationModel> reservation = AddReservationController.getById(id);
    	System.out.println("Reservation found: " + (reservation != null));
    	
    	request.setAttribute("reservation", reservation);
    	RequestDispatcher dispatcher = request.getRequestDispatcher("/SingleReservationDetails.jsp");
    	dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
} 