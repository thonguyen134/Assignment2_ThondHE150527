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
    public boolean checkStringAndNumber(String input) {
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
    public boolean checkInteger(String input){
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
    public boolean checkGender(String gender){
        if (gender == null || gender.trim().length() == 0) {
                return false;
            }
        return true;
    }
    //phase_motor
    public boolean checkPhaseMotor(String phaseMotor){
        if (phaseMotor == null || phaseMotor.trim().length() == 0) {
                return false;
            }
        if(phaseMotor.equals("1")||phaseMotor.equals("3")){
            return true;
        }
        return false;
    }
    //kw_motor 1 phase
    public boolean checkKwMotorOnePhase(String kwMotor){
        if (kwMotor == null || kwMotor.trim().length() == 0) {
                return false;
            }
        double[] arrayKw = {0.125,0.15,0.37,0.5,0.75,1.1,1.5,2.5,3,4,5};
        for(int i = 0 ;i<arrayKw.length;i++){
            if(Double.parseDouble(kwMotor)==(arrayKw[i])){
                return true;
            }
        }
        return false;
    }
     //kw_motor 3 phase
    public boolean checkKwMotorThreePhase(String kwMotor){
        if (kwMotor == null || kwMotor.trim().length() == 0) {
                return false;
            }
        double[] arrayKw = {0.37,0.5,0.75,1.1,1.5,2.2,2.5,3,3.7,4,4.5,5,7.5,11,
            15,17,18.5,22,24,25,28,30,33,37,40,45,55,75,90,100,110,132,160,220};
        for(int i = 0 ;i<arrayKw.length;i++){
            if(Double.parseDouble(kwMotor)==(arrayKw[i])){
                return true;
            }
        }
        return false;
    }
    //check salary  
    public boolean checkFloat(String input){
            if (input == null || input.trim().length() == 0) {
                return false;
            }
            try {
            float salary = Float.parseFloat(input);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
