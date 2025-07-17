<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Fuel Stock</title>
<link rel="stylesheet" href="CSS/Fstock.css">
</head>
<body>

<%
String id = request.getParameter("id");
String fuel_type = request.getParameter("fuel_type");
double quantity = Double.parseDouble(request.getParameter("quantity"));
String supplier = request.getParameter("supplier");
double unit_price = Double.parseDouble(request.getParameter("unit_price"));
java.sql.Date delivery_date = java.sql.Date.valueOf(request.getParameter("delivery_date"));

// ✅ Convert delivery_date to String "YYYY-MM-DD" (for input type="date")
String delivery_date_str = delivery_date.toString();
%>

<header>
    <div class="logo">
        <span class="logo-green">AutoPilot</span>
        <span class="logo-white">Hub</span>
      </div>
    <nav>
      <a href="#">Fuel Management</a>
     
      <a href="#">View all</a>
      <a href="#">Back</a>
    </nav>
  </header>

  <main>
    <div class="form-container">
    
    <h2 style="text-align: center;">Fuel Inventory Management</h2>
    <p class="subtitle" style="text-align: center;">--Add new fuel inventory levels--</p>
    <br>

    <div class="alert">Use this form to record new fuel deliveries and update current stock levels. All fields marked with * are required.</div>
    <form action="updatefuelservlet" method="post">

  <div class="form-group">
    <label for="id">Id</label>
    <input type="number" id="id" name="id" value="<%=id%>" readonly >
  </div>

  <div class="form-group">
    <label for="fuelType">Fuel Type *</label>
    <select id="fuel_type" name="fuel_type" required>
      <option value="">Select</option>
      <option value="Petrol(Gasoline)" <%= "Petrol(Gasoline)".equals(fuel_type) ? "selected" : "" %>>Petrol(Gasoline)</option>
      <option value="diesel" <%= "diesel".equals(fuel_type) ? "selected" : "" %>>Diesel</option>
      <option value="Compressed Natural Gas (CNG)" <%= "Compressed Natural Gas (CNG)".equals(fuel_type) ? "selected" : "" %>>Compressed Natural Gas (CNG)</option>
      <option value="Kerosene" <%= "Kerosene".equals(fuel_type) ? "selected" : "" %>>Kerosene</option>
      <option value="Ethanal" <%= "Ethanal".equals(fuel_type) ? "selected" : "" %>>Ethanal</option>
    </select>
  </div>

  <div class="form-group">
    <label for="currentStock">Quantity (Liters) *</label>
    <input type="number" id="quantity" name="quantity" value="<%=quantity%>" required>
  </div>

  <div class="form-group">
    <label for="supplier">Supplier *</label>
    <input type="text" id="supplier" name="supplier" value="<%=supplier%>" required>
  </div>

  <div class="form-group">
    <label for="unitPrice">Unit Price ($/L) *</label>
    <input type="number" step="0.01" id="unit_price" name="unit_price" value="<%=unit_price%>" required>
  </div>

  <div class="form-group">
    <label for="deliveryDate">Delivery Date *</label>
    <input type="date" id="delivery_date" name="delivery_date" value="<%=delivery_date_str%>" required>
  </div>

  <div style="display: flex; justify-content: center; gap: 10px; margin-top: 20px;">
    <button type="submit" style="width: 450px; height: 40px;">Update Stock</button>
    
    <button type="reset" style="background-color: grey; width: 450px; height: 40px;">Reset</button>
  </div>
</form>
 </div>
  </main>
 <footer>
  <div class="border-t border-gray-700 pt-6 text-center text-gray-400">
    <p style="text-align: center;">&copy; 2025 AutoPilot Hub. All rights reserved.</p>
  </div>
</footer>
 
</body>
</html>
