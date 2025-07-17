package com.oop.AutoPilotHub.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.AutoPilotHub.Util.UserDBUtil;
import com.oop.AutoPilotHub.model.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/registerProcess")
public class RegisterServlet extends HttpServlet {
	  protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

		  String fname = request.getParameter("firstname");
	        String lname = request.getParameter("lastname");
	        String email = request.getParameter("email");
	        String phone = request.getParameter("phone");
	        String password = request.getParameter("password");
	        String confirmPassword = request.getParameter("confirmPassword");

	        if (!password.equals(confirmPassword)) {
	            response.setContentType("text/html;charset=UTF-8");
	            response.getWriter().println("<script>alert('Passwords do not match!'); window.location='Signup.jsp';</script>");
	            return;
	        }

	        User user = new User(fname, lname, email, phone, password);
	        boolean result = UserDBUtil.register(user);

	        if (result) {
	            response.setContentType("text/html;charset=UTF-8");
	            response.getWriter().println("<script>alert('Registration successful! Please login.'); window.location='Signin.jsp';</script>");
	        } else {
	            response.setContentType("text/html;charset=UTF-8");
	            response.getWriter().println("<script>alert('Registration failed! Try again.'); window.location='Signup.jsp';</script>");
	        }
	    }
	}
