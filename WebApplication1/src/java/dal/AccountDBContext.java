/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author tkoko
 */
public class AccountDBContext extends DBContext{
   public Account getAccount(String user , String pass){
       try {
           String sql = "SELECT username,password,displayName FROM Account \n"
                   + "WHERE username = ? and password = ?";
           PreparedStatement stm  = connection.prepareStatement(sql);
           stm.setString(1, user);
           stm.setString(2, pass);
           ResultSet rs = stm.executeQuery();
           if(rs.next()){
             Account a = new Account();
             a.setUsername(rs.getString("username"));
             a.setPassword(rs.getString("password"));
             a.setDisplayName(rs.getString("displayName"));
             return a;
           }
       } catch (SQLException ex) {
           Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
       }
       return null;
   }
  
}
