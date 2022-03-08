/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;


import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tkoko
 */
public class TimekeepingDBContext extends DBContext{
    public void insertTimekeeping(String[] listDate){
        String sql ="	IF NOT EXISTS(SELECT 1 FROM Timekeeping WHERE t_day = ?)\n" +
                    "    INSERT INTO Timekeeping([t_day])\n" +
                    "    VALUES(?)";
        try {
            connection.setAutoCommit(false);
            DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for(int i  = 0 ;i<listDate.length;i++){
                java.sql.Date sqlDate;
                Date d = null;
                try {
                    d = (Date)sdf.parse(listDate[i]);
                } catch (ParseException ex) {
                    Logger.getLogger(TimekeepingDBContext.class.getName()).log(Level.SEVERE, null, ex);
                }
                sqlDate = new java.sql.Date(d.getTime());
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setDate(1,sqlDate);
            stm.setDate(2,sqlDate);
            stm.executeUpdate();
            }
        connection.commit();
        } catch (SQLException ex) {
            Logger.getLogger(TimekeepingDBContext.class.getName()).log(Level.SEVERE, null, ex);
            try {
                connection.rollback();
            } catch (SQLException ex1) {
                Logger.getLogger(TimekeepingDBContext.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
        finally
        {
            try {
                connection.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(TimekeepingDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
            //close connection
        }
        
    }
}
   
