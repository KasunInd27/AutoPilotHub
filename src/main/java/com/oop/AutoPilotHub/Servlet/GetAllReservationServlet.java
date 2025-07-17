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

@WebServlet("/GetAllReservationServlet")
public class GetAllReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	List<AddReservationModel> allReservations = AddReservationController.getAllReservation();
		request.setAttribute("allReservations", allReservations);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ReservationDetails.jsp");
		dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
    
}
