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
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>AutoPilot Hub - Feedback</title>
	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 text-gray-900 flex flex-col min-h-screen">

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
          <a href="Home.jsp" class="hover:text-green-400 transition-colors">Facilities</a>
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
          <a href="#signin" class="hover:text-green-400 transition-colors">Sign in</a>
          <a href="#signup" class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-md">Sign up</a>
        </div>
  
        <!-- Mobile menu toggle (optional if you need mobile support) -->
        <button class="md:hidden text-white">
          <!-- Icon placeholder, if you want to implement toggle logic -->
          ☰
        </button>
      </div>
    </header>

    <!-- Hero Section -->
    <section class="w-full bg-gray-900 text-white py-16 px-6 text-center">
      <div class="max-w-4xl mx-auto">
        <h1 class="text-4xl md:text-5xl font-bold mb-4">Your Feedback Matters</h1>
        <p class="text-xl opacity-90">
          Help us improve our vehicle services and fuel station management by sharing your experience
        </p>
      </div>
    </section>

    <!-- Feedback Form Section -->
    <section class="py-16 px-6 max-w-4xl mx-auto">
      <div class="grid md:grid-cols-2 gap-12 items-center">
        <div>
          <h2 class="text-3xl font-bold mb-6">Share Your Experience</h2>
          <p class="text-gray-600 mb-6">
            Your feedback helps us provide better service to all our customers.
            Let us know about your recent visit to AutoPilot Hub.
          </p>
          <img
            src="https://images.unsplash.com/photo-1625047509248-ec889cbff17f?auto=format&fit=crop&w=1024&q=80"
            alt="Vehicle service center"
            class="w-full h-auto rounded-lg shadow-lg"
          />
        </div>
        <div class="bg-white p-6 rounded-lg shadow-lg">
          <form>
            <div class="mb-6">
              <label class="block text-gray-700 font-medium mb-2" for="name">Full Name</label>
              <input type="text" id="name" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-500" placeholder="Your name" />
            </div>
            <div class="mb-6">
              <label class="block text-gray-700 font-medium mb-2" for="email">Email Address</label>
              <input type="email" id="email" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-500" placeholder="Your email" />
            </div>
            <div class="mb-6">
              <label class="block text-gray-700 font-medium mb-2" for="service">Service Used</label>
              <select id="service" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-500">
                <option value="">Select a service</option>
                <option>Vehicle Maintenance</option>
                <option>Vehicle Repair</option>
                <option>Fuel Services</option>
                <option>Car Wash</option>
                <option>Other</option>
              </select>
            </div>
            <div class="mb-6">
              <label class="block text-gray-700 font-medium mb-2">Rate Your Experience</label>
              <div class="flex space-x-2 text-gray-400">
                <!-- Static Star Rating Example -->
                <span class="text-green-500">★</span>
                <span class="text-green-500">★</span>
                <span class="text-green-500">★</span>
                <span class="text-green-500">★</span>
                <span>★</span>
              </div>
            </div>
            <div class="mb-6">
              <label class="block text-gray-700 font-medium mb-2" for="feedback">Your Feedback</label>
              <textarea id="feedback" rows="4" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-500" placeholder="Please share your experience with us"></textarea>
            </div>
            <button type="submit" class="w-full bg-green-500 hover:bg-green-600 text-white py-3 px-4 rounded-md transition-colors">
              Submit Feedback
            </button>
          </form>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section class="py-16 px-6 bg-gray-100">
      <div class="max-w-6xl mx-auto text-center">
        <h2 class="text-3xl font-bold mb-12">What Our Customers Say</h2>
        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8 text-left">
          <!-- Repeat this block for each testimonial -->
          <div class="bg-white p-6 rounded-lg shadow-md">
            <div class="flex mb-4 text-green-500 text-sm">★★★★★</div>
            <p class="text-gray-600 mb-4">
              "The service at AutoPilot Hub was exceptional. My car was serviced quickly and professionally."
            </p>
            <div class="flex items-center">
              <div class="w-10 h-10 bg-green-100 rounded-full mr-3 flex items-center justify-center text-green-600">💬</div>
              <div>
                <p class="font-medium">Michael Johnson</p>
                <p class="text-sm text-gray-500">Regular Customer</p>
              </div>
            </div>
          </div>

          <div class="bg-white p-6 rounded-lg shadow-md">
            <div class="flex mb-4 text-green-500 text-sm">★★★★☆</div>
            <p class="text-gray-600 mb-4">
              "I've been using AutoPilot Hub for all my maintenance. Great fuel quality and dependable staff."
            </p>
            <div class="flex items-center">
              <div class="w-10 h-10 bg-green-100 rounded-full mr-3 flex items-center justify-center text-green-600">💬</div>
              <div>
                <p class="font-medium">Sarah Williams</p>
                <p class="text-sm text-gray-500">Loyal Customer</p>
              </div>
            </div>
          </div>

          <div class="bg-white p-6 rounded-lg shadow-md">
            <div class="flex mb-4 text-green-500 text-sm">★★★★★</div>
            <p class="text-gray-600 mb-4">
              "Scheduling online was easy and the mechanics explained everything. Excellent service!"
            </p>
            <div class="flex items-center">
              <div class="w-10 h-10 bg-green-100 rounded-full mr-3 flex items-center justify-center text-green-600">💬</div>
              <div>
                <p class="font-medium">David Thompson</p>
                <p class="text-sm text-gray-500">New Customer</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Call to Action -->
    <section class="py-16 px-6 bg-gray-900 text-white text-center">
      <div class="max-w-4xl mx-auto">
        <h2 class="text-3xl font-bold mb-6">We Value Your Opinion</h2>
        <p class="text-xl opacity-90 mb-8">Your feedback helps us improve our services.</p>
        <div class="flex flex-col sm:flex-row justify-center gap-4">
          <a href="#" class="bg-green-500 hover:bg-green-600 text-white py-3 px-8 rounded-md">👍 Leave a Review</a>
          <a href="#" class="border border-white hover:bg-white hover:text-gray-900 py-3 px-8 rounded-md">Contact Support</a>
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