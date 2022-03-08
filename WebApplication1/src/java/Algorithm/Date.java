/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Algorithm;

import java.util.ArrayList;

/**
 *
 * @author tkoko
 */
public class Date {

    public ArrayList<String> getDayOfMonth(int year, int month) {
        int lastDay=-1;
        switch (month) {
            case 1:
                lastDay = 31;
                break;
            case 2:
                if (year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)) {
                    lastDay = 29;
                } else {
                    lastDay = 28;
                }
                break;
            case 3:
                lastDay = 31;
                break;
            case 4:
                lastDay = 30;
                break;
            case 5:
                lastDay = 31;
                break;
            case 6:
                lastDay = 30;
                break;
            case 7:
                lastDay = 31;
                break;
            case 8:
                lastDay = 31;
                break;
            case 9:
                lastDay = 30;
                break;
            case 10:
                lastDay = 31;
                break;
            case 11:
                lastDay = 30;
                break;
            case 12:
                lastDay = 31;
                break;
        }
        ArrayList result = new ArrayList();
        for(int i = 1;i<=lastDay;i++){
            String date = year+"-"+month+"-"+i;
            result.add(date);
        }
        return result;
    }
}
