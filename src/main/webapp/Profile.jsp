<%@ page import="com.oop.AutoPilotHub.model.User" %>
<%@ page session="true" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("Signin.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>My Profile - AutoPilot Hub</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 text-slate-900">

  <!-- Header -->
  <header class="bg-slate-800 text-white sticky top-0 z-50">
    <div class="container mx-auto px-4 py-5 flex items-center justify-between text-lg">
      <!-- Logo -->
      <div class="flex items-center">
        <span class="text-green-400 font-bold text-3xl">AutoPilot</span>
        <span class="font-bold text-3xl ml-1">Hub</span>
      </div>
  
      <!-- Centered Navigation -->
      <nav class="hidden md:flex flex-1 justify-center space-x-8">
       <a href="UserDashboard.jsp" class="hover:text-green-400 transition-colors">Facilities</a>
        <a href="#products" class="hover:text-green-400 transition-colors">Product</a>
        <a href="AddReservation.jsp" class="hover:text-green-400 transition-colors">Reservation</a>
        <a href="Feedback.jsp" class="hover:text-green-400 transition-colors">Feedback</a>
        
        <a href="Profile.jsp" class="hover:text-green-400 transition-colors">Profile</a>
        
        <a href="AboutUs.jsp" class="hover:text-green-400 transition-colors">About Us</a>
        <a href="ContactUs.jsp" class="hover:text-green-400 transition-colors">Contact Us</a>
      </nav>
  
      <!-- Auth Buttons -->
      <div class="hidden md:flex items-center space-x-4">
       <a href="Signin.jsp" class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-md">Log Out</a>
      </div>
  
      <!-- Mobile menu toggle -->
      <button class="md:hidden text-white">
        ☰
      </button>
    </div>
  </header>
  
  <!-- Profile Form Section -->
  <section class="py-16 min-h-screen flex items-center">
    <div class="container mx-auto px-4">
      <div class="max-w-md mx-auto bg-white rounded-lg overflow-hidden shadow-lg">
        <div class="bg-slate-800 px-6 py-8 text-center text-white">
          <div class="flex items-center justify-center mb-6">
            <span class="text-green-400 font-bold text-3xl">AutoPilot</span>
            <span class="font-bold text-3xl ml-1">Hub</span>
          </div>
          <h2 class="text-2xl font-bold">My Profile</h2>
          <p class="text-gray-300 mt-2">Manage your account information</p>
        </div>
        
        <form action="UpdateUserServlet" method="POST" class="p-6 space-y-6">
         <input type="hidden" name="id" value="<%= user.getId() %>">
        
          <!-- First Name Input -->
          <div>
            <label for="firstName" class="block text-sm font-medium text-gray-700 mb-1">First Name</label>
            <input type="text" id="firstName" name="firstName" value="<%= user.getFirstName() %>" required
              class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-500">
          </div>
          
          <!-- Last Name Input -->
          <div>
            <label for="lastName" class="block text-sm font-medium text-gray-700 mb-1">Last Name</label>
            <input type="text" id="lastName" name="lastName" value="<%= user.getLastName() %>" required
              class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-500">
          </div>
          
          <!-- Email Input -->
          <div>
            <label for="email" class="block text-sm font-medium text-gray-700 mb-1">Email Address</label>
            <input type="email" id="email" name="email" value="<%= user.getEmail() %>" readonly
              class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-500">
          </div>
          
          <!-- Phone Input -->
          <div>
            <label for="phone" class="block text-sm font-medium text-gray-700 mb-1">Phone</label>
            <input type="tel" id="phone" name="phone" value="<%= user.getPhone() %>" required
              class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-500">
          </div>
          
          <!-- Action Buttons -->
          <div class="flex space-x-4">
            <button type="submit" class="flex-1 bg-green-500 hover:bg-green-600 text-white py-2 px-4 rounded-md transition-colors font-medium">
              Update
            </button>
            
            <a href="DeleteUserServlet?id=<%= user.getId() %>"  onclick="return confirm('Are you sure you want to delete your account?');" 
               class="flex-1 bg-red-500 hover:bg-red-600 text-white py-2 px-4 rounded-md transition-colors font-medium text-center">
              Delete Account
            </a>
          </div>
        </form>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="bg-slate-800 text-white pt-16 pb-8">
    <div class="container mx-auto px-4 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 mb-12">
      <div>
        <div class="flex items-center mb-4">
          <span class="text-green-400 font-bold text-xl">AutoPilot</span>
          <span class="font-bold text-xl">Hub</span>
        </div>
        <p class="text-gray-300 mb-4">Your one-stop destination for complete vehicle care and fuel services.</p>
      </div>
      <div>
        <h3 class="font-bold text-lg mb-4">Quick Links</h3>
        <ul class="space-y-2 text-gray-300">
          <li><a href="#facilities" class="hover:text-green-400">Facilities</a></li>
          <li><a href="#products" class="hover:text-green-400">Products</a></li>
          <li><a href="#reservation" class="hover:text-green-400">Reservation</a></li>
          <li><a href="#feedback" class="hover:text-green-400">Feedback</a></li>
          <li><a href="#about" class="hover:text-green-400">About Us</a></li>
        </ul>
      </div>
      <div>
        <h3 class="font-bold text-lg mb-4">Services</h3>
        <ul class="space-y-2 text-gray-300">
          <li><a href="#oil-change" class="hover:text-green-400">Oil Change</a></li>
          <li><a href="#tire-service" class="hover:text-green-400">Tire Service</a></li>
          <li><a href="#fuel-services" class="hover:text-green-400">Fuel Services</a></li>
          <li><a href="#diagnostics" class="hover:text-green-400">Diagnostics</a></li>
          <li><a href="#maintenance" class="hover:text-green-400">Maintenance</a></li>
        </ul>
      </div>
      <div>
        <h3 class="font-bold text-lg mb-4">Contact Us</h3>
        <ul class="space-y-3 text-gray-300">
          <li>123 Auto Service Road, City, State 12345</li>
          <li><a href="tel:+11234567890" class="hover:text-green-400">(123) 456-7890</a></li>
          <li><a href="mailto:info@autopilothub.com" class="hover:text-green-400">info@autopilothub.com</a></li>
        </ul>
      </div>
    </div>
    <div class="border-t border-gray-700 pt-6 text-center text-gray-400">
      <p>&copy; 2025 AutoPilot Hub. All rights reserved.</p>
    </div>
  </footer>

</body>
</html>