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

import com.oop.AutoPilotHub.model.Itemmodel;
import com.oop.AutoPilotHub.Service.Itemcontrol;
import com.oop.AutoPilotHub.Util.LoggerUtil;


@WebServlet("/ItemDeleteservlet")
public class ItemDeleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private static final Logger logger = LoggerUtil.getLogger(ItemDeleteservlet.class.getName());
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int itemid = Integer.parseInt(request.getParameter("itemid"));
		
		logger.info("Received request to delete item with ID: " + itemid);logger.info("Received request to delete item with ID: " + itemid);
		
		boolean isTrue;
		isTrue = Itemcontrol.deletedata(itemid);
		if(isTrue == true) {
			
			logger.info("Task with ID " + itemid + " deleted successfully.");
			String alertMessage = "data Delete Successful";
			response.getWriter().println("<script>alert('"+alertMessage+"');"+"window.location.href='Itemgetall';</script>");
		}
		else {
			List<Itemmodel> itemdetails = Itemcontrol.getById(itemid);
			request.setAttribute("itemdetails",itemdetails);
			
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
			dispatcher.forward(request, response);
		}
	}

}