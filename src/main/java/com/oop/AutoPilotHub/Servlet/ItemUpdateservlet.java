package com.oop.AutoPilotHub.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.AutoPilotHub.model.Itemmodel;
import com.oop.AutoPilotHub.Service.Itemcontrol;


@WebServlet("/ItemUpdateservlet")
public class ItemUpdateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int itemid = Integer.parseInt(request.getParameter("itemid"));
		String itemname= request.getParameter("itemname");
		int stockqty = Integer.parseInt(request.getParameter("stockqty"));
		int reorderamount = Integer.parseInt(request.getParameter("reorderamount"));
		String lastupdated= request.getParameter("lastupdated");
		
		boolean isTrue;
		isTrue = Itemcontrol.updatedata(itemid, itemname, stockqty, reorderamount, lastupdated);
		
				if(isTrue == true) {
					List<Itemmodel> itemdetails = Itemcontrol.getById(itemid);
					request.setAttribute("itemdetails", itemdetails);
					String alertMessage = "Data Update Successful";
					response.getWriter().println("<script> alert('"+alertMessage+"'); window.location.href='Itemgetall'</script>");
				}
				else {
					RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
					dis2.forward(request, response);
				}
	}

}