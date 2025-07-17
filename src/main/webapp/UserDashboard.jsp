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
<title>AutoPilot Hub</title>
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
  

  <!-- Hero Section -->
  <section class="relative bg-slate-900 text-white">
    <div class="absolute inset-0 bg-[url('https://images.unsplash.com/photo-1613214149922-f1809c99b414?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80')] bg-cover bg-center opacity-30"></div>
    <div class="container mx-auto px-4 py-20 md:py-32 relative z-10">
      <div class="max-w-3xl">
        <h1 class="text-4xl md:text-6xl font-bold mb-6">Complete auto services for your vehicle</h1>
        <p class="text-xl md:text-2xl mb-8">Access premium vehicle maintenance, repair, and fuel services all in one place</p>
        <div class="flex flex-col sm:flex-row gap-4">
          <a href="SingleReservationDetails.jsp" class="bg-green-500 hover:bg-green-600 text-white px-6 py-3 rounded-md text-lg font-medium text-center">View Reservation</a>
          <a href="AddReservation.jsp" class="border-2 border-white hover:bg-white hover:text-slate-900 text-white px-6 py-3 rounded-md text-lg font-medium text-center">Make Reservation</a>
        </div>
      </div>
    </div>
  </section>

  <!-- Service Categories -->
  <section class="py-16 bg-white">
    <div class="container mx-auto px-4 text-center mb-12">
      <h2 class="text-3xl font-bold mb-4">Our Service Categories</h2>
      <p class="text-gray-600 max-w-2xl mx-auto">
        Explore our comprehensive range of automotive services designed to
        keep your vehicle running smoothly
      </p>
    </div>
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 px-4">
      <!-- Category 1 -->
      <div class="bg-gray-100 border border-gray-100 rounded-lg p-6 hover:shadow-lg transition-shadow">
        <div class="flex items-center mb-2">
          <span class="text-green-600 text-2xl mr-3">🚗</span>
          <h3 class="font-bold text-xl text-green-600">Vehicle Maintenance</h3>
        </div>
        <p class="text-gray-500">25+ Services</p>
      </div>
  
      <!-- Category 2 -->
      <div class="bg-gray-100 border border-gray-100 rounded-lg p-6 hover:shadow-lg transition-shadow">
        <div class="flex items-center mb-2">
          <span class="text-green-600 text-2xl mr-3">⛽</span>
          <h3 class="font-bold text-xl text-green-600">Fuel Services</h3>
        </div>
        <p class="text-gray-500">Multiple Options</p>
      </div>
  
      <!-- Category 3 -->
      <div class="bg-gray-100 border border-gray-100 rounded-lg p-6 hover:shadow-lg transition-shadow">
        <div class="flex items-center mb-2">
          <span class="text-green-600 text-2xl mr-3">🔧</span>
          <h3 class="font-bold text-xl text-green-600">Auto Repairs</h3>
        </div>
        <p class="text-gray-500">30+ Services</p>
      </div>
  
      <!-- Category 4 -->
      <div class="bg-gray-100 border border-gray-100 rounded-lg p-6 hover:shadow-lg transition-shadow">
        <div class="flex items-center mb-2">
          <span class="text-green-600 text-2xl mr-3">🧪</span>
          <h3 class="font-bold text-xl text-green-600">Diagnostics</h3>
        </div>
        <p class="text-gray-500">15+ Tests</p>
      </div>
  
      <!-- Category 5 -->
      <div class="bg-gray-100 border border-gray-100 rounded-lg p-6 hover:shadow-lg transition-shadow">
        <div class="flex items-center mb-2">
          <span class="text-green-600 text-2xl mr-3">⚡</span>
          <h3 class="font-bold text-xl text-green-600">Quick Services</h3>
        </div>
        <p class="text-gray-500">10+ Options</p>
      </div>
  
      <!-- Category 6 -->
      <div class="bg-gray-100 border border-gray-100 rounded-lg p-6 hover:shadow-lg transition-shadow">
        <div class="flex items-center mb-2">
          <span class="text-green-600 text-2xl mr-3">🛡️</span>
          <h3 class="font-bold text-xl text-green-600">Insurance Services</h3>
        </div>
        <p class="text-gray-500">5+ Plans</p>
      </div>
    </div>
  </section>
  
  <!-- Featured Services -->
  <section class="py-16 bg-gray-100">
    <div class="container mx-auto px-4 text-center mb-12">
      <h2 class="text-3xl font-bold mb-4">Featured Services</h2>
      <p class="text-gray-600 max-w-2xl mx-auto">Our most popular automotive services chosen by customers</p>
    </div>
    <div class="grid grid-cols-1 md:grid-cols-3 gap-8 px-4">
      <!-- Service Card 1 -->
      <div class="bg-white rounded-lg overflow-hidden shadow-md hover:shadow-xl transition-shadow">
        <div class="h-48 overflow-hidden">
          <img src="https://images.unsplash.com/photo-1599256872237-5dcc0fbe9668?ixlib=rb-4.0.3&auto=format&fit=crop&w=1171&q=80" alt="Premium Oil Change" class="w-full h-full object-cover hover:scale-105 transition-transform">
        </div>
        <div class="p-6">
          <h3 class="font-bold text-xl mb-2">Premium Oil Change</h3>
          <p class="text-gray-600 mb-4">Complete oil change service with top-grade synthetic oils for optimal engine performance.</p>
          <div class="flex justify-between items-center">
            <span class="text-green-600 font-medium">From $49.99</span>
            <a href="#book" class="text-slate-800 font-medium hover:text-green-600">Book Now →</a>
          </div>
        </div>
      </div>
      <!-- Service Card 2 -->
      <div class="bg-white rounded-lg overflow-hidden shadow-md hover:shadow-xl transition-shadow">
        <div class="h-48 overflow-hidden">
          <img src=".\Images\VehicleInspection.jpeg" alt="Vehicle Inspection" class="w-full h-full object-cover hover:scale-105 transition-transform">
        </div>
        <div class="p-6">
          <h3 class="font-bold text-xl mb-2">Complete Vehicle Inspection</h3>
          <p class="text-gray-600 mb-4">Comprehensive 50-point inspection to ensure your vehicle is in optimal condition.</p>
          <div class="flex justify-between items-center">
            <span class="text-green-600 font-medium">From $89.99</span>
            <a href="#book" class="text-slate-800 font-medium hover:text-green-600">Book Now →</a>
          </div>
        </div>
      </div>
      <!-- Service Card 3 -->
      <div class="bg-white rounded-lg overflow-hidden shadow-md hover:shadow-xl transition-shadow">
        <div class="h-48 overflow-hidden">
          <img src=".\Images\FuelService.jpeg" alt="Fuel Service" class="w-full h-full object-cover hover:scale-105 transition-transform">
        </div>
        <div class="p-6">
          <h3 class="font-bold text-xl mb-2">Premium Fuel Service</h3>
          <p class="text-gray-600 mb-4">High-quality fuel options with engine-cleaning additives for better performance.</p>
          <div class="flex justify-between items-center">
            <span class="text-green-600 font-medium">Market Price</span>
            <a href="#book" class="text-slate-800 font-medium hover:text-green-600">Book Now →</a>
          </div>
        </div>
      </div>
    </div>
    <div class="mt-10 text-center">
      <a href="#all-services" class="inline-block bg-slate-800 hover:bg-slate-900 text-white px-6 py-3 rounded-md text-lg font-medium">View All Services</a>
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