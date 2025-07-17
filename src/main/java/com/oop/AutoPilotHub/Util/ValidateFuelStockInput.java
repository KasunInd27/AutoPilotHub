package com.oop.AutoPilotHub.Util;

import java.util.Date;

public class ValidateFuelStockInput {

    public static boolean validateQuantity(double quantity) {
        // Quantity should be positive
        return quantity > 0;
    }

    public static boolean validateUnitPrice(double unitPrice) {
        // Unit price should be positive
        return unitPrice > 0;
    }

    public static boolean validateDeliveryDate(Date deliveryDate) {
        // Delivery date should not be in the future
        Date today = new Date();
        return !deliveryDate.after(today);
    }

}
