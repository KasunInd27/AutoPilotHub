package com.oop.AutoPilotHub.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oop.AutoPilotHub.Util.UserDBUtil;

/**
 * Servlet implementation class DeleteUserServlet
 */
@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        int id = Integer.parseInt(request.getParameter("id"));

	        boolean deleted = UserDBUtil.deleteUser(id);
	        if (deleted) {
	            HttpSession session = request.getSession();
	            session.invalidate();
	            response.sendRedirect("Signin.jsp");
	        } else {
	            request.setAttribute("error", "Account deletion failed.");
	            request.getRequestDispatcher("Profile.jsp").forward(request, response);
	        }
	    }
	}