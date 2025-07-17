package com.oop.AutoPilotHub.Util;


import java.util.Date;

public class ValidateReservationInput {

    // Method to validate phone number (should be exactly 10 digits)
    public static boolean validatePhoneNumber(String phoneNumber) {
        // Check if the phone number is 10 digits
        if (phoneNumber != null && phoneNumber.matches("\\d{10}")) {
            return true;
        }
        return false;
    }

    // Method to validate the preferred date (should not be in the past)
    public static boolean validatePreferredDate(Date preferredDate) {
       
        try {
  
            Date currentDate = new Date();
            // Check if the preferred date is in the past
            if (preferredDate.after(currentDate)) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    
}
