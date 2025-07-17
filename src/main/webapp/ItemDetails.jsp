
<%@ page import="java.util.List" %>
<%@ page import="com.oop.AutoPilotHub.model.Itemmodel" %>
<%@ page import="com.oop.AutoPilotHub.Service.Itemcontrol" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Manage Item Stock</title>
  
 <link rel = "stylesheet" href = ".\CSS\ItemDetails.css">
   
   
   
  
</head>
<body>

<% 
List <Itemmodel> allItems =Itemcontrol.getAllitem();
request.setAttribute("allItems",allItems);
%>


  <h2>Manage Item Stock</h2>
  
  <input type="text" id="searchInput" placeholder="search...">
  

  <table>
    <thead>
      <tr>
        <th>Item ID</th>
        <th>Item Name</th>
        <th>Stock Quantity</th>
        <th>Reorder Amount</th>
        <th>Date</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody id="stockTable">
    <c:forEach var="item" items="${allItems}">
    
      <tr>
        <td>${item.itemid}</td>
        <td>${item.itemname} </td>
        <td>${item.stockqty}</td>
        <td>${item.reorderamount}</td>
        <td>${item.lastupdated}</td>
        <td>
        <a class="btn edit-btn" 
     href="ItemUpdate.jsp?itemid=${item.itemid}&itemname=${item.itemname}&stockqty=${item.stockqty}&reorderamount=${item.reorderamount}&lastupdated=${item.lastupdated}">
     Update
  </a>
        
        <form action="ItemDeleteservlet" method="post" style="display:inline;">
  <input type="hidden" name="itemid" value="${item.itemid}" />
  <button class="btn delete-btn">Delete</button>
</form>
        
         
        </td>
      </c:forEach>
    </tbody>
  </table>
  
   <script>
  function filterTable() {
    var input, filter, table, tr, td, i, j, txtValue;
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    table = document.querySelector("table");
    tr = table.getElementsByTagName("tr");

    
    for (i = 1; i < tr.length; i++) {
      td = tr[i].getElementsByTagName("td");
      tr[i].style.display = "none"; 

      for (j = 0; j < td.length; j++) {
        if (td[j]) {
          txtValue = td[j].textContent || td[j].innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = ""; 
            break;
          }
        }
      }
    }
  }

  document.getElementById("searchInput").addEventListener("input", filterTable);
</script>
   

  <script>
    function addItem() {
      alert("This should open a form/modal to add a new item.");
    }
  </script>

</body>
</html>