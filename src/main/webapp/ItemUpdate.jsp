<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Add New Stock Item</title>
  
   
</head>
<body>

   <% 
   int itemid = Integer.parseInt(request.getParameter("itemid"));
  		String itemname= request.getParameter("itemname");
  		int stockqty = Integer.parseInt(request.getParameter("stockqty"));
  		int reorderamount = Integer.parseInt(request.getParameter("reorderamount"));
  		String lastupdated= request.getParameter("lastupdated");
  		


          %>

  <div class="form-container">
    <h2>Add New Item to Stock</h2>
    <form action="ItemUpdateservlet" id="addItemForm" method="post">
    
      
       <label for="itemId">Item ID</label>
      <input type="text" id="itemId" name="itemid" value="<%=itemid%>"readonly>
      
      <label for="itemName">Item Name</label>
      <input type="text" id="itemName" name="itemname" value="<%=itemname%>" readonly> 

      <label for="quantity">Stock Quantity</label>
      <input type="number" id="quantity" name="stockqty" min="0" value="<%=stockqty%>"  required>

      <label for="reorderLevel">Reorder Level</label>
      <input type="number" id="reorderLevel" name="reorderamount" min="0" value="<%=reorderamount%>"  required>

     <label for="lastUpdated">Last Updated (DD/MM/YYYY)</label>

<input 
  type="text" 
  id="lastUpdated" 
  name="lastupdated" 
  value="<%=lastupdated%>" 
  pattern="^(0?[1-9]|[12][0-9]|30)/(0?[1-9]|1[0-2])/\d{4}$" 
  placeholder="e.g., 15-05-2025"
  title="Enter a date in DD-MM-YYYY format (1-30 for day, 1-12 for month, 4-digit year)" 
  required>
  
    <button type="submit">Add Item</button>

    </form>
  </div>
</body>
</html>