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

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String fname = request.getParameter("firstName");
        String lname = request.getParameter("lastName");
        String phone = request.getParameter("phone");

        boolean updated = UserDBUtil.updateUser(id, fname, lname, phone);

        if (updated) {
            HttpSession session = request.getSession();
            User user = UserDBUtil.getUserById(id); // refetch updated data
            session.setAttribute("user", user);
            response.getWriter().println("<script>alert('Update successful!'); window.location='Profile.jsp';</script>");
           
        } else {
            request.setAttribute("error", "Update failed!");
            request.getRequestDispatcher("Profile.jsp").forward(request, response);
        }
    }
}