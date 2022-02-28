/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package valid;

/**
 *
 * @author tkoko
 */
public class CheckValidate {

    public boolean checkString(String input) {
        if (input == null || input.trim().length() == 0) {
            return false;
        }
        if (input.matches("^[a-zA-Z1-9\\s]+$")) {
            return true;
        } else {
            return false;
        }
    }
}
