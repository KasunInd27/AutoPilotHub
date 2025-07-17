<%@ page import="java.util.List" %>
<%@ page import="com.oop.AutoPilotHub.model.Itemmodel" %>
<%@ page import="com.oop.AutoPilotHub.Service.Itemcontrol" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Item List</title>
    

    <script>
        function addToCart(itemName) {
            alert("Item '" + itemName + "' added to cart successfully. Please visit the Order Items page to enter quantity and payment details.");
        }
    </script>
</head>
<body>

<%
    List<Itemmodel> allItems = Itemcontrol.getAllitem();
    request.setAttribute("allItems", allItems);
%>

<h2>Available Items</h2>

<img src = ".\Images\Items.jpeg" alt ="Items" class="item-image">

<div class="item-container">
    <c:forEach var="item" items="${allItems}">
        <div class="item-card">
            <div class="item-name">${item.itemname}</div>
            <div class="stock-qty"> ${item.stockqty} In stock </div>
            <button onclick="addToCart('${item.itemname}')">Add to Cart</button>
        </div>
    </c:forEach>
</div>

</body>
</html>