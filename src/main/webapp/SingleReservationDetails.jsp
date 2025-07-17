<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<title>Reservation Details</title>
	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 text-slate-900 flex flex-col min-h-screen">

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
          <a href="#profile" class="hover:text-green-400 transition-colors">Profile</a>
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

  <!-- Main Content (Centering Applied) -->
  <main class="flex-grow flex items-center justify-center px-4 py-10">
    <div class="w-full max-w-3xl bg-white p-8 rounded-lg shadow-md">
      <h1 class="text-3xl font-bold text-center text-gray-800 mb-10">
        <i class="fa-solid fa-car-wrench text-orange-600 mr-2"></i>Reservation Details
      </h1>
	  
	  <c:forEach var="reservation" items="${reservation}">
      <!-- Customer Information -->
      <div class="mb-8">
        <h2 class="text-xl font-semibold text-green-400 border-b pb-2 mb-4">Customer Information</h2>
        <div class="space-y-3">
          <div class="flex justify-between text-gray-700"><span class="font-medium">Full Name:</span><span>${reservation.full_name}</span></div>
          <div class="flex justify-between text-gray-700"><span class="font-medium">Phone Number:</span><span>${reservation.phone_number}</span></div>
          <div class="flex justify-between text-gray-700"><span class="font-medium">Email Address:</span><span>${reservation.email_address}</span></div>
        </div>
      </div>

      <!-- Vehicle Information -->
      <div class="mb-8">
        <h2 class="text-xl font-semibold text-green-400 border-b pb-2 mb-4">Vehicle Information</h2>
        <div class="space-y-3">
          <div class="flex justify-between text-gray-700"><span class="font-medium">Vehicle Model:</span><span>${reservation.vehicle_model}</span></div>
          <div class="flex justify-between text-gray-700"><span class="font-medium">Year:</span><span>${reservation.year}</span></div>
          <div class="flex justify-between text-gray-700"><span class="font-medium">License Plate:</span><span>${reservation.license_plate}</span></div>
        </div>
      </div>

      <!-- Service Details -->
      <div>
        <h2 class="text-xl font-semibold text-green-400 border-b pb-2 mb-4">Service Details</h2>
        <div class="space-y-3">
          <div class="flex justify-between text-gray-700"><span class="font-medium">Service Type:</span><span>${reservation.service_type}</span></div>
          <div class="flex justify-between text-gray-700"><span class="font-medium">Preferred Date:</span><span>${reservation.preferred_date}</span></div>
          <div class="flex justify-between text-gray-700"><span class="font-medium">Preferred Time:</span><span>${reservation.preferred_time}</span></div>
        </div>
      </div>
      
      <!-- Action Buttons -->
      <div class="flex justify-center gap-4 mt-8">
         <!-- Update Button -->
         <a href="UpdateReservation.jsp?id=${reservation.id}&full_name=${reservation.full_name}&phone_number=${reservation.phone_number}&email_address=${reservation.email_address}&vehicle_model=${reservation.vehicle_model}&year=${reservation.year}&license_plate=${reservation.license_plate}&service_type=${reservation.service_type}&preferred_date=${reservation.preferred_date}&preferred_time=${reservation.preferred_time}"
            class="bg-green-500 hover:bg-green-600 text-white px-6 py-2 rounded-md font-semibold transition-colors">
            Update Details
         </a>
         <!-- Delete Button -->
         <form action="DeleteReservationServlet" method="post" onsubmit="return confirm('Are you sure you want to delete this reservation?');">
            <input type="hidden" name="id" value="${reservation.id}" />
            <button type="submit"
              class="bg-red-500 hover:bg-red-600 text-white px-6 py-2 rounded-md font-semibold transition-colors">
              Delete Details
            </button>
         </form>
      </div>
      </c:forEach>
  </div>
 </main>

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