<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    com.oop.AutoPilotHub.model.User user = (com.oop.AutoPilotHub.model.User) session.getAttribute("user");
    boolean loggedIn = (user != null);
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Add Reservation – AutoPilot Hub</title>
	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 text-slate-800">

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
          <% if (loggedIn) { %>
        <a href="Profile.jsp" class="hover:text-green-400 transition-colors">Profile</a>
    <% } %>
          <a href="AboutUs.jsp" class="hover:text-green-400 transition-colors">About Us</a>
          <a href="ContactUs.jsp" class="hover:text-green-400 transition-colors">Contact Us</a>
        </nav>
  
        <!-- Auth Buttons -->
        <div class="hidden md:flex items-center space-x-4">
          <a href="Signin.jsp" class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-md">Log Out</a>
        </div>
  
        <!-- Mobile menu toggle (optional if you need mobile support) -->
        <button class="md:hidden text-white">
          <!-- Icon placeholder, if you want to implement toggle logic -->
          ☰
        </button>
      </div>
    </header>
  
  <div class="min-h-screen py-12">
    <div class="container mx-auto px-4">
      <div class="max-w-3xl mx-auto bg-white p-8 rounded-xl shadow-md">
        <h1 class="text-4xl font-bold mb-2">Add Reservation</h1>
        <p class="text-gray-600 mb-8">Book your vehicle service appointment with AutoPilot Hub</p>

        <form action="ARInsertServlet" method="post">
          <!-- Customer Info -->
          <div class="mb-8">
            <h2 class="text-xl font-semibold mb-4 flex items-center">
              <span class="text-green-600 mr-2">👤</span> Customer Information
            </h2>
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium mb-1">Full Name *</label>
                <input type="text" name="full_name" required placeholder="Enter your full name"
                  class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:outline-none" />
              </div>
              <div>
                <label class="block text-sm font-medium mb-1">Phone Number *</label>
                <input type="tel" name="phone_number" required placeholder="Enter your phone number"
                  class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:outline-none" />
              </div>
              <div>
                <label class="block text-sm font-medium mb-1">Email Address</label>
                <input type="email" name="email_address" placeholder="Enter your email address"
                  class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:outline-none" />
              </div>
            </div>
          </div>

          <!-- Vehicle Info -->
          <div class="mb-8">
            <h2 class="text-xl font-semibold mb-4 flex items-center">
              <span class="text-green-600 mr-2">🚗</span> Vehicle Information
            </h2>
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium mb-1">Vehicle Model *</label>
                <input type="text" name="vehicle_model" required placeholder="Enter vehicle model"
                  class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:outline-none" />
              </div>
              <div>
                <label class="block text-sm font-medium mb-1">Year *</label>
                <select  name="year" required class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:outline-none">
                  <option value="">Select year</option>
                  <!-- Add options manually or use JS -->
                  <option value="2025">2025</option>
                  <option value="2024">2024</option>
                  <option value="2023">2023</option>
                  <option value="2022">2022</option>
                </select>
              </div>
              <div>
                <label class="block text-sm font-medium mb-1">License Plate</label>
                <input type="text" name="license_plate" placeholder="Enter license plate number"
                  class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:outline-none" />
              </div>
            </div>
          </div>

          <!-- Service Details -->
          <div class="mb-8">
            <h2 class="text-xl font-semibold mb-4 flex items-center">
              <span class="text-green-600 mr-2">🛠️</span> Service Details
            </h2>
            <div class="space-y-4">
              <div>
                <label class="block text-sm font-medium mb-1">Service Type *</label>
                <select  name="service_type" required class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:outline-none">
                  <option value="">Select service type</option>
                  <option>Oil Change</option>
                  <option>Tire Service</option>
                  <option>Brake Service</option>
                  <option>Engine Diagnostics</option>
                  <option>Fuel Service</option>
                  <option>General Maintenance</option>
                  <option>Air Conditioning</option>
                  <option>Battery Service</option>
                </select>
              </div>
              <div>
                <label class="block text-sm font-medium mb-1">Preferred Date *</label>
                <input type="date" name="preferred_date" required class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:outline-none" />
              </div>
              <div>
                <label class="block text-sm font-medium mb-1">Preferred Time *</label>
                <select name="preferred_time" required class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:outline-none">
                  <option value="">Select time slot</option>
                  <option value="09:00:00">09:00 AM</option>
                  <option value="10:00:00">10:00 AM</option>
                  <option value="11:00:00">11:00 AM</option>
                  <option value="12:00:00">12:00 PM</option>
                  <option value="14:00:00">02:00 PM</option>
                  <option value="15:00:00">03:00 PM</option>
                  <option value="16:00:00">04:00 PM</option>
                  <option value="17:00:00">05:00 PM</option>
                </select>
              </div>
            </div>
          </div>

          <!-- Buttons -->
          <div class="flex flex-col sm:flex-row gap-4">
            <button type="submit" class="flex-1 bg-green-500 text-white px-6 py-3 rounded-md hover:bg-green-600 transition-colors font-medium">
              Submit Reservation
            </button>
            <button type="reset" class="flex-1 bg-gray-100 text-gray-700 px-6 py-3 rounded-md hover:bg-gray-200 transition-colors font-medium">
              Reset Form
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <footer class="bg-slate-800 text-white pt-16 pb-8">
    <div class="container mx-auto px-4 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 mb-12">
      <div>
        <div class="flex items-center mb-4">
          <span class="text-green-400 font-bold text-xl">AutoPilot</span>
          <span class="font-bold text-xl">Hub</span>
        </div>
        <p class="text-gray-300 mb-4">Your one-stop destination for complete vehicle care and fuel services.</p>
        <!-- Socials Placeholder -->
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