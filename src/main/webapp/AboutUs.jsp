<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>About – AutoPilot Hub</title>
	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-white text-slate-800">

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
    <div class="absolute inset-0 bg-[url('https://images.unsplash.com/photo-1487754180451-c456f719a1fc?ixlib=rb-4.0.3&auto=format&fit=crop&w=1974&q=80')] bg-cover bg-center opacity-20"></div>
    <div class="container mx-auto px-4 relative z-10">
      <div class="max-w-3xl mx-auto text-center">
        <h1 class="text-4xl md:text-5xl font-bold mb-6">
          <span class = "text-white">About</span>
          <span class = "text-green-400">AutoPilot</span>
          <span class = "text-white">Hub</span>
        </h1>
        <p class="text-xl text-gray-300">Your trusted partner in vehicle care and maintenance since 2010</p>
      </div>
    </div>
  </section>

  <!-- Overview Section -->
  <section class="py-16">
    <div class="container mx-auto px-4">
      <div class="grid md:grid-cols-2 gap-12 items-center">
        <div>
          <h2 class="text-3xl font-bold mb-6">Leading the Way in Automotive Excellence</h2>
          <p class="text-gray-600 mb-4">
            AutoPilot Hub was founded with a clear vision: to provide exceptional vehicle care services while making the process seamless and convenient for our customers.
          </p>
          <p class="text-gray-600 mb-6">
            Over the years, we've grown from a single service center to multiple locations, serving thousands of satisfied customers. Our commitment to quality, transparency, and customer satisfaction remains at the heart of everything we do.
          </p>
          <div class="grid grid-cols-2 gap-6">
            <div class="text-center p-4 bg-gray-50 rounded-lg">
              <div class="text-3xl font-bold text-green-600 mb-2">13+</div>
              <div class="text-gray-600">Years Experience</div>
            </div>
            <div class="text-center p-4 bg-gray-50 rounded-lg">
              <div class="text-3xl font-bold text-green-600 mb-2">50k+</div>
              <div class="text-gray-600">Happy Customers</div>
            </div>
          </div>
        </div>
        <div>
          <img src="https://images.unsplash.com/photo-1581291518633-83b4ebd1d83e?ixlib=rb-4.0.3&auto=format&fit=crop&w=1170&q=80" alt="Modern service center" class="rounded-lg shadow-lg" />
        </div>
      </div>
    </div>
  </section>

  <!-- Core Values Section -->
  <section class="py-16 bg-gray-50">
    <div class="container mx-auto px-4">
      <div class="text-center max-w-3xl mx-auto mb-12">
        <h2 class="text-3xl font-bold mb-4">Our Core Values</h2>
        <p class="text-gray-600">These principles guide our work and ensure we deliver the best possible service to our customers</p>
      </div>
      <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
        <!-- Value 1 -->
        <div class="bg-white p-6 rounded-lg shadow-md text-center">
          <div class="mb-4 text-green-600 text-3xl">🛡️</div>
          <h3 class="text-xl font-semibold mb-2">Quality Service</h3>
          <p class="text-gray-600">We maintain the highest standards in automotive care and customer service.</p>
        </div>
        <!-- Value 2 -->
        <div class="bg-white p-6 rounded-lg shadow-md text-center">
          <div class="mb-4 text-green-600 text-3xl">🏆</div>
          <h3 class="text-xl font-semibold mb-2">Expert Team</h3>
          <p class="text-gray-600">Our certified technicians bring years of experience and expertise.</p>
        </div>
        <!-- Value 3 -->
        <div class="bg-white p-6 rounded-lg shadow-md text-center">
          <div class="mb-4 text-green-600 text-3xl">⏱️</div>
          <h3 class="text-xl font-semibold mb-2">Timely Delivery</h3>
          <p class="text-gray-600">We respect your time and ensure prompt service delivery.</p>
        </div>
        <!-- Value 4 -->
        <div class="bg-white p-6 rounded-lg shadow-md text-center">
          <div class="mb-4 text-green-600 text-3xl">👥</div>
          <h3 class="text-xl font-semibold mb-2">Customer First</h3>
          <p class="text-gray-600">Your satisfaction and safety are our top priorities.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Expertise Section -->
  <section class="py-16">
    <div class="container mx-auto px-4">
      <div class="grid md:grid-cols-2 gap-12 items-center">
        <div class="order-2 md:order-1 grid grid-cols-2 gap-4">
          <img src=".\Images\serviceExpert.jpeg" alt="Service expertise" class="rounded-lg" />
          <img src=".\Images\profTeam.jpeg" alt="Professional team" class="rounded-lg mt-8" />
        </div>
        <div class="order-1 md:order-2">
          <h2 class="text-3xl font-bold mb-6">Our Expertise</h2>
          <p class="text-gray-600 mb-6">With state-of-the-art facilities and certified technicians, we provide comprehensive automotive services including:</p>
          <ul class="space-y-4">
            <li class="flex items-center"><span class="h-2 w-2 bg-green-500 rounded-full mr-3"></span>Complete Vehicle Diagnostics and Repairs</li>
            <li class="flex items-center"><span class="h-2 w-2 bg-green-500 rounded-full mr-3"></span>Premium Fuel Services</li>
            <li class="flex items-center"><span class="h-2 w-2 bg-green-500 rounded-full mr-3"></span>Preventive Maintenance</li>
            <li class="flex items-center"><span class="h-2 w-2 bg-green-500 rounded-full mr-3"></span>24/7 Emergency Services</li>
          </ul>
        </div>
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