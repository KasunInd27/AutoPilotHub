<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AutoService Pro - Manager Dashboard</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      display: flex;
      background-color: white;
    }

    .sidebar {
      width: 240px;
      background-color: #2c3e50;
      color: #fff;
      height: 102vh;
      padding: 20px;
      box-sizing: border-box;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }

    .sidebar h2 {
      font-size: 22px;
      margin-bottom: 30px;
    }

    .sidebar a {
      display: block;
      color: #fff;
      text-decoration: none;
      margin: 15px 0;
      font-size: 16px;
    }

    .sidebar a i {
      margin-right: 10px;
    }

    .sidebar a:hover {
      background-color: #3749a6;
      padding: 8px;
      border-radius: 8px;
    }

    .main {
      flex-grow: 1;
      padding: 20px;
    }

    .main h1 {
      font-size: 28px;
      margin-bottom: 5px;
    }

    .main p {
      font-size: 16px;
      color: #555;
    }

    .top-boxes {
      display: flex;
      gap: 20px;
      margin: 30px 0;
      flex-wrap: wrap;
    }

    .box {
      background-color: #f8f4e3;
      padding: 20px;
      border-radius: 10px;
      flex: 1;
      min-width: 220px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      outline-style: solid;
      outline-color: #d1e0e0;
      outline-width: thin;
    }

    .box h3 {
      margin: 0;
      font-size: 18px;
      color: #555;
    }

    .box p {
      font-size: 20px;
      margin: 10px 0 0;
      color: #333;
    }

    .fuel-section {
      background-color: white;
      padding: 20px;
      border-radius: 20px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      outline-style: solid;
      outline-color: #d1e0e0;
      outline-width: thin;
    }

    .fuel-section h2 {
      font-size: 22px;
      margin-bottom: 20px;
    }

    .fuel-section p {
      font-size: 16px;
      margin: 10px 0 5px;
    }

    .fuel-bar {
      height: 9px;
      background-color: #ddd;
      border-radius: 5px;
      margin: 5px 0 15px;
      overflow: hidden;
    }

    .fuel-bar-fill {
      height: 100%;
      border-radius: 5px;
    }

    .low {
      color: black;
    }

    .critical {
      color: #dc2626;
    }
  </style>
</head>

<body>

  <div class="sidebar">
    <!-- Logo -->
    <div class="flex items-center">
      <span class="text-green-400 font-bold text-3xl">AutoPilot</span>
      <span class="font-bold text-3xl ml-1">Hub</span>
    </div>

    <p style="margin-top: 10px; font-size: 16px;">--Manager Dashboard--</p>
    <hr style="margin: 15px 0;">

    <a href="ManagerDashboard.jsp"><i class="fas fa-chart-line"></i> Dashboard</a>

    <!-- Fuel Stock with subparts -->
    <div>
        <a href="#" onclick="toggleSubmenu('fuelSubmenu')"><i class="fas fa-gas-pump"></i> Fuel Stock <i class="fas fa-chevron-down float-right"></i></a>
        <div id="fuelSubmenu" style="display: none; margin-right: 15px;">
            <a href="Fstock.jsp">• Add</a> <!-- Updated: Removed the invalid character from here -->
            <a href="FuelstockDetails.jsp">• Manage</a>
        </div>
    </div>
    <div>
        <a href="#" onclick="toggleSubmenu('itemSubmenu')"><i class="fas fa-box"></i> Items <i class="fas fa-chevron-down float-right"></i></a>
        <div id="itemSubmenu" style="display: none; margin-left: 15px;">
            <a href="manageItemStock.jsp">• Add</a> <!-- Updated: Removed the invalid character from here -->
            <a href="ItemDetails.jsp">• Manage</a>
        </div>
    </div>

    <a href="#"><i class="fas fa-tasks"></i> Service Requests</a>
    <a href="#"><i class="fas fa-users"></i> Mechanics</a>
    <a href="#"><i class="fas fa-cog"></i> Settings</a>

    <div style="margin-top: auto;">
      <a href="#"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>
  </div>

  <div class="main">
    
      <h1><b>Dashboard Overview</b></h1>
    
    <p>Welcome back, Admin</p>

    <div class="top-boxes">
      <div class="box" style="background-color: #e6ecff;">
        <h3>Today's Revenue</h3>
        <p>$2,850 <i class="fas fa-arrow-up" style="color:green;"></i></p>
      </div>
      <div class="box">
        <h3>Active Service Requests <i class='fas fa-exclamation-circle' style='color:orange'></i></h3>
        <p>24 <span style="font-size:14px; color:orange;">(4 pending approval)</span></p>
      </div>
      <div class="box" style="background-color: #e6ecff;">
        <h3>Mechanics on Duty <i class="fas fa-users" style='color:rgba(0, 8, 255, 0.514)'></i></h3>
        <p>8 <span style="font-size:14px; color:gray;">(2 on leave)</span></p>
      </div>
      <div class="box" style="background-color:#e6ffee;">
        <h3>Completed Services ✅</h3>
        <p>18 Today</p>
      </div>
    </div><br>

    <div class="fuel-section">
      <h2>Fuel Stock Levels</h2>

      <p>Petrol(Gasoline) - 8,125 L / 12,500 L</p>
      <div class="fuel-bar">
        <div class="fuel-bar-fill" style="width: 65%; background-color:green;"></div>
      </div>

      <p>Diesel- 4,500 L / 10,000 L <span class="low">(Stock running low, consider reordering)</span></p>
      <div class="fuel-bar">
        <div class="fuel-bar-fill" style="width: 45%; background-color:#ff8533;"></div>
      </div>

      <p>Compressed Natural Gas (CNG) - 12,000 L / 15,000 L</p>
      <div class="fuel-bar">
        <div class="fuel-bar-fill" style="width: 80%; background-color:green;"></div>
      </div>

      <p>Ethanol E85 - 2,000 L / 8,000 L <span class="critical">(Critical level, reorder immediately)</span></p>
      <div class="fuel-bar">
        <div class="fuel-bar-fill" style="width: 25%; background-color: rgba(255, 0, 0, 0.675);"></div>
      </div>

      <p>Kerosene -7,000 L / 9,000 L</p>
      <div class="fuel-bar">
        <div class="fuel-bar-fill" style="width: 30%; background-color:#ff8533;"></div>
      </div>

    </div>

    <footer>
      <div class="border-t border-gray-700 pt-6 text-center text-gray-400">
        <br>
        <p>&copy; 2025 AutoPilot Hub. All rights reserved.</p>
      </div>
    </footer>
  </div>

  <script>
    function toggleSubmenu(id) {
      var submenu = document.getElementById(id);
      submenu.style.display = submenu.style.display === 'block' ? 'none' : 'block';
    }
  </script>

</body>

</html>