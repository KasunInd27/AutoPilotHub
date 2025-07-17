<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Contact Us</title>
	<script src="https://cdn.tailwindcss.com"></script>
	<link href="https://unpkg.com/lucide@latest/dist/umd/lucide.min.js" rel="stylesheet" />
	</head>
<body class="bg-white min-h-screen">

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
          
          <a href="Feedback.jsp" class="hover:text-green-400 transition-colors">Feedback</a>
         
          <a href="AboutUs.jsp" class="hover:text-green-400 transition-colors">About Us</a>
          <a href="ContactUs.jsp" class="hover:text-green-400 transition-colors">Contact Us</a>
        </nav>
  
        <!-- Auth Buttons -->
        <div class="hidden md:flex items-center space-x-4">
          <a href="Signin.jsp" class="hover:text-green-400 transition-colors">Sign in</a>
          <a href="Signup.jsp" class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-md">Sign up</a>
        </div>
  
        <!-- Mobile menu toggle (optional if you need mobile support) -->
        <button class="md:hidden text-white">
          <!-- Icon placeholder, if you want to implement toggle logic -->
          ☰
        </button>
     </div>
    </header>
  
  <!-- Hero Section -->
  <section class="relative bg-slate-900 text-white py-20">
    <div class="absolute inset-0 bg-[url('https://images.unsplash.com/photo-1625047509248-ec889cbff17f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80')] bg-cover bg-center opacity-20"></div>
    <div class="relative z-10 container mx-auto px-4 text-center max-w-3xl mx-auto">
      <h1 class="text-4xl md:text-5xl font-bold mb-6">Contact Us</h1>
      <p class="text-xl text-gray-300">
        We're here to help. Get in touch with us for any inquiries or assistance.
      </p>
    </div>
  </section>

  <!-- Quick Contact Info -->
  <section class="py-12 bg-gray-50">
    <div class="container mx-auto px-4 grid md:grid-cols-3 gap-8">
      <div class="flex items-start p-6 bg-white rounded-lg shadow-md">
        <i data-lucide="phone" class="text-green-600 mr-4" style="font-size: 24px;"></i>
        <div>
          <h3 class="font-semibold text-lg mb-2">Phone</h3>
          <p class="text-gray-600">Main: (212) 555-0123</p>
          <p class="text-gray-600">Support: (212) 555-0124</p>
        </div>
      </div>
      <div class="flex items-start p-6 bg-white rounded-lg shadow-md">
        <i data-lucide="mail" class="text-green-600 mr-4" style="font-size: 24px;"></i>
        <div>
          <h3 class="font-semibold text-lg mb-2">Email</h3>
          <p class="text-gray-600">info@autopilothub.com</p>
          <p class="text-gray-600">support@autopilothub.com</p>
        </div>
      </div>
      <div class="flex items-start p-6 bg-white rounded-lg shadow-md">
        <i data-lucide="clock" class="text-green-600 mr-4" style="font-size: 24px;"></i>
        <div>
          <h3 class="font-semibold text-lg mb-2">Working Hours</h3>
          <p class="text-gray-600">Monday - Saturday</p>
          <p class="text-gray-600">8:00 AM - 6:00 PM</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Contact Form and Image -->
  <section class="py-16">
    <div class="container mx-auto px-4 grid md:grid-cols-2 gap-12 items-center">
      <div>
        <h2 class="text-3xl font-bold mb-6 text-slate-800">Send Us a Message</h2>
        <p class="text-gray-600 mb-8">
          Have questions about our services? Fill out the form below and we'll get back to you as soon as possible.
        </p>
        <form class="space-y-6">
          <div>
            <label for="name" class="block text-sm font-medium text-gray-700 mb-1">Full Name *</label>
            <input type="text" id="name" required placeholder="Enter your full name"
              class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:border-transparent" />
          </div>
          <div>
            <label for="email" class="block text-sm font-medium text-gray-700 mb-1">Email Address *</label>
            <input type="email" id="email" required placeholder="Enter your email address"
              class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:border-transparent" />
          </div>
          <div>
            <label for="subject" class="block text-sm font-medium text-gray-700 mb-1">Subject *</label>
            <input type="text" id="subject" required placeholder="Enter message subject"
              class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:border-transparent" />
          </div>
          <div>
            <label for="message" class="block text-sm font-medium text-gray-700 mb-1">Message *</label>
            <textarea id="message" rows="4" required placeholder="Enter your message"
              class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-2 focus:ring-green-500 focus:border-transparent"></textarea>
          </div>
          <button type="submit"
            class="w-full bg-green-500 text-white px-6 py-3 rounded-md hover:bg-green-600 transition-colors font-medium">
            Send Message
          </button>
        </form>
      </div>
      <div>
        <img src="https://images.unsplash.com/photo-1560179707-f14e90ef3623?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1174&q=80"
          alt="Service Center" class="rounded-lg shadow-lg" />
      </div>
    </div>
  </section>

  <!-- Locations -->
  <section class="py-16 bg-gray-50">
    <div class="container mx-auto px-4">
      <div class="text-center mb-12">
        <h2 class="text-3xl font-bold mb-4 text-slate-800">Our Locations</h2>
        <p class="text-gray-600 max-w-2xl mx-auto">
          Visit us at any of our service centers for professional automotive care
        </p>
      </div>
      <div class="grid md:grid-cols-2 gap-8">
        <!-- Location 1 -->
        <div class="bg-white p-6 rounded-lg shadow-md">
          <h3 class="text-xl font-semibold mb-4 text-slate-800">Main Service Center</h3>
          <div class="space-y-3">
            <div class="flex items-start">
              <i data-lucide="map-pin" class="text-green-600 mr-3 mt-1"></i>
              <div>
                <p class="text-gray-600">123 Auto Service Road</p>
                <p class="text-gray-600">New York, NY 10001</p>
              </div>
            </div>
            <div class="flex items-center">
              <i data-lucide="phone" class="text-green-600 mr-3"></i>
              <p class="text-gray-600">(212) 555-0123</p>
            </div>
            <div class="flex items-center">
              <i data-lucide="clock" class="text-green-600 mr-3"></i>
              <p class="text-gray-600">Mon-Sat: 8:00 AM - 6:00 PM</p>
            </div>
          </div>
        </div>
        <!-- Location 2 -->
        <div class="bg-white p-6 rounded-lg shadow-md">
          <h3 class="text-xl font-semibold mb-4 text-slate-800">Downtown Branch</h3>
          <div class="space-y-3">
            <div class="flex items-start">
              <i data-lucide="map-pin" class="text-green-600 mr-3 mt-1"></i>
              <div>
                <p class="text-gray-600">456 Vehicle Avenue</p>
                <p class="text-gray-600">New York, NY 10002</p>
              </div>
            </div>
            <div class="flex items-center">
              <i data-lucide="phone" class="text-green-600 mr-3"></i>
              <p class="text-gray-600">(212) 555-0124</p>
            </div>
            <div class="flex items-center">
              <i data-lucide="clock" class="text-green-600 mr-3"></i>
              <p class="text-gray-600">Mon-Sat: 8:00 AM - 7:00 PM</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <script>
    lucide.createIcons();
  </script>

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