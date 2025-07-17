<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Sign In - AutoPilot Hub</title>
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
        
      </nav>
  
      <!-- Auth Buttons -->
      <div class="hidden md:flex items-center space-x-4">
        <a href="Signin.jsp" class="text-green-400 font-medium">Sign in</a>
        <a href="Signup.jsp" class="bg-green-500 hover:bg-green-600 px-4 py-2 rounded-md">Sign up</a>
      </div>
  
      <!-- Mobile menu toggle -->
      <button class="md:hidden text-white">
        ☰
      </button>
    </div>
  </header>
  
  <!-- Sign In Form Section -->
  <section class="py-16 min-h-screen flex items-center">
    <div class="container mx-auto px-4">
      <div class="max-w-md mx-auto bg-white rounded-lg overflow-hidden shadow-lg">
        <div class="bg-slate-800 px-6 py-8 text-center text-white">
          <div class="flex items-center justify-center mb-6">
            <span class="text-green-400 font-bold text-3xl">AutoPilot</span>
            <span class="font-bold text-3xl ml-1">Hub</span>
          </div>
          <h2 class="text-2xl font-bold">Welcome Back</h2>
          <p class="text-gray-300 mt-2">Sign in to access your account</p>
        </div>
        
        <form action="loginProcess" method="POST" class="p-6 space-y-6">
          <!-- Email Input -->
          <div>
            <label for="email" class="block text-sm font-medium text-gray-700 mb-1">Email Address</label>
            <input type="email" id="email" name="email" required
              class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-500"
              placeholder="your@email.com">
          </div>
          
          <!-- Password Input -->
          <div>
            <label for="password" class="block text-sm font-medium text-gray-700 mb-1">Password</label>
            <input type="password" id="password" name="password" required
              class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-green-500"
              placeholder="••••••••">
          </div>
          
          <!-- Remember Me & Forgot Password -->
          <div class="flex items-center justify-between">
            <div class="flex items-center">
              <input type="checkbox" id="remember" name="remember" class="h-4 w-4 text-green-600 focus:ring-green-500 border-gray-300 rounded">
              <label for="remember" class="ml-2 block text-sm text-gray-700">Remember me</label>
            </div>
            <a href="#forgot-password" class="text-sm text-green-600 hover:text-green-800">Forgot password?</a>
          </div>
          
          <!-- Submit Button -->
          <button type="submit" class="w-full bg-green-500 hover:bg-green-600 text-white py-2 px-4 rounded-md transition-colors font-medium">
            Sign In
          </button>
          
          <!-- Sign Up Link -->
          <div class="text-center">
            <p class="text-sm text-gray-600">
              Don't have an account? 
              <a href="Signup.jsp" class="font-medium text-green-600 hover:text-green-800">Sign up now</a>
            </p>
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