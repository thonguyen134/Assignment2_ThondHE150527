/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package valid;

import dal.AccountDBContext;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tkoko
 */
public class CheckValidate {
    //check  string  [a-zA-Z1-9]
    public boolean checkStringLogin(String input) {
        if (input == null || input.trim().length() == 0) {
            return false;
        }
        if (input.matches("^[a-zA-Z1-9\\s]+$")) {
            return true;
        } else {
            return false;
        }
    }
    //check  string  [a-zA-Z]
    public boolean checkString(String input) {
        if (input == null || input.trim().length() == 0) {
            return false;
        }
        if (input.matches("^[a-zA-Z\\s]+$")) {
            return true;
        } else {
            return false;
        }
    }
     //check dob  
    public boolean checkDateOfBirth(String input){
            if (input == null || input.trim().length() == 0) {
                return false;
            }
            try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date dateNow = new Date();
            Date dob = sdf.parse(input);
            if(dateNow.compareTo(dob)<=0){
                return false;
            }
        } catch (ParseException ex) {
            Logger.getLogger(CheckValidate.class.getName()).log(Level.SEVERE, null, ex);
        }
            return true;
    }
     //check hiredate  
    public boolean checkHireDate(String inputHireDate,String inputDob){
            if (inputHireDate == null || inputHireDate.trim().length() == 0) {
                return false;
            }
            try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date hireDate = sdf.parse(inputHireDate);
            Date dob = sdf.parse(inputDob);
            if(hireDate.compareTo(dob)<=0){
                return false;
            }
        } catch (ParseException ex) {
            Logger.getLogger(CheckValidate.class.getName()).log(Level.SEVERE, null, ex);
        }
            return true;
    }
    //check salary  
    public boolean checkSalary(String input){
            if (input == null || input.trim().length() == 0) {
                return false;
            }
            try {
            int salary = Integer.parseInt(input);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    //check number phone  
    public boolean checkPhone(String input){
            if (input == null || input.trim().length() == 0) {
                return false;
            }
            if (input.matches("^(84|0[3|5|7|8|9])+([0-9]{8})$")) {
                return true;
            }
            return false;
    }
    //check mail 
    public boolean checkEmail(String input){
        if (input == null || input.trim().length() == 0) {
                return false;
            }
        String regex = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
                + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        if(input.matches(regex)){
            return true;
        }
        return false;
    }
    public boolean checkDuplicateUser(String user){
        AccountDBContext db = new AccountDBContext();
        return db.checkAccountExist(user);
    }
}
