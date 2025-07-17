<%@ page import="java.util.List" %>
<%@ page import="com.oop.AutoPilotHub.model.fuelModel" %>
<%@ page import="com.oop.AutoPilotHub.Service.fuelController" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FuelStockDetails</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" href="CSS/Fdetails.css">


</head>
<body>

<%
List<fuelModel> allFuelstocks = fuelController.getAllFuelStock();
request.setAttribute("allFuelstocks", allFuelstocks);
%>
  <header>
    <div class="logo">
        <span class="logo-green">AutoPilot</span>
        <span class="logo-white">Hub</span>
      </div>
    <nav>
      <a href="Fstock.jsp">Add Stock</a>
      <a href="ManagerDashboard.jsp">Back</a>
    </nav>
  </header>

<main>
  <br><br>

  <div style="display: flex; align-items: center; justify-content: space-between; width: 90%; margin: 0 auto;">
    <div style="text-align: center; flex: 1;">
      <i class='fas fa-gas-pump' style='font-size:48px;color:red'></i>
      <h1 style="margin: 0;">Current Fuel Inventory Details</h1>
    </div>

    <input type="text" id="searchInput" placeholder="Search fuel type..." 
           style="padding: 8px; font-size: 16px; border: 1px solid #ccc; border-radius: 5px; margin-left: 20px;">
  </div>

  <br><br>



<table border="1" style="width: 80%; margin: 0 auto; border-collapse: collapse; text-align: center;">
  <tr style="background-color:   	 #d9d9d9; ">
  
    <th style="padding: 12px;">Serial </th>
    <th style="padding: 12px;">fuel_type</th>
    <th style="padding: 12px;">quantity</th>
    <th style="padding: 12px;">supplier</th>
    <th style="padding: 12px;">unit_price</th>
    <th style="padding: 12px;">delivery_date</th>
    <th style="padding: 12px;">action</th>
   
  </tr>

  <c:forEach var="fuelstock" items="${allFuelstocks}"> 
      <tr>
      <td>${fuelstock.id }</td>
      <td>${fuelstock.fuel_type}</td>
      <td>${fuelstock.quantity}</td>
      <td>${fuelstock.supplier}</td>
      <td>${fuelstock.unit_price}</td>
      <td>${fuelstock.delivery_date}</td>
      
      <td> <a href="fuelupdate.jsp?id=${fuelstock.id}&fuel_type=${fuelstock.fuel_type}&quantity=${fuelstock.quantity}&supplier=${fuelstock.supplier}&unit_price=${fuelstock.unit_price}&delivery_date=${fuelstock.delivery_date}"><button class="update-btn">Update</button></a>
 

<form action="fueldeleteservlet" method="post" style="display:inline;">
    <input type="hidden" name="id" value="${fuelstock.id}">
    <button type="submit" class="delete-btn" >Delete</button>
</form>

       </td>
      </tr>
     </c:forEach>
   </table>
  <script>
function filterTable() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    table = document.querySelector("table");
    tr = table.getElementsByTagName("tr");

    for (i = 1; i < tr.length; i++) { // start from 1 to skip table header row
        td = tr[i].getElementsByTagName("td")[1]; // index 1 is 'fuel_type'
        if (td) {
            txtValue = td.textContent || td.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }       
    }
}

document.getElementById("searchInput").addEventListener("input", filterTable);
</script>
  
  </main>
  
 </body>
</html>