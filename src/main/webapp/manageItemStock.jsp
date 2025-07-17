<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Add New Stock Item</title>
   
   <link rel  = "stylesheet" href = "CSS/ManageItemStock.css"> 
</head>
<body>

  <div class="form-container">
    <h2> Manage Item Stock - Add new item </h2>
    <form action="ItemInsertservlet" id="addItemForm" method="post">
      

      <label for="itemName">Item Name</label>
      <input type="text" id="itemName" name="itemname" required>

      <label for="quantity">Stock Quantity</label>
      <input type="number" id="quantity" name="stockqty" min="0"  required>

      <label for="reorderLevel">Reorder Amount</label>
      <input type="number" id="reorderLevel" name="reorderamount" min="0"  required>

      <label for="lastUpdated">Last Updated</label>
      <input type="text" id="lastUpdated" name="lastupdated" placeholder="dd/mm/yyyy" required>
      
      

     
     <button type="submit">Add Item</button>

    </form>
    
    
    
    
   </div>

</body>
</html>