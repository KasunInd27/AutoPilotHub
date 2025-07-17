package com.oop.AutoPilotHub.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oop.AutoPilotHub.Util.UserDBUtil;
import com.oop.AutoPilotHub.model.User;

@WebServlet("/loginProcess")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");

	    User tempUser = UserDBUtil.validate(email, password);

	    if (tempUser != null) {
	        // Fetch full user details
	        User user = UserDBUtil.getUserById(tempUser.getId());

	        HttpSession session = request.getSession();
	        session.setAttribute("user", user);

	        // Redirect logic updated for manager email
	        if ("manager@gmail.com".equalsIgnoreCase(email)) {
	            // If email is manager@gmail.com, redirect to ManagerDashboard.jsp
	            response.setContentType("text/html;charset=UTF-8");
	            response.getWriter().println("<script>alert('Login successful! Redirecting to Manager Dashboard.'); window.location='ManagerDashboard.jsp';</script>");
	        } else {
	            // For other users, redirect to Home.jsp
	            response.setContentType("text/html;charset=UTF-8");
	            response.getWriter().println("<script>alert('Login successful!'); window.location='UserDashboard.jsp';</script>");
	        }
	    } else {
	        // Failure alert
	        response.setContentType("text/html;charset=UTF-8");
	        response.getWriter().println("<script>alert('Invalid email or password!'); window.location='Signin.jsp';</script>");
	    }
	}
}