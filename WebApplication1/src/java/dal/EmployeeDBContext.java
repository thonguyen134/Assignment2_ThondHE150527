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
import model.Employee;

/**
 *
 * @author tkoko
 */
public class EmployeeDBContext extends DBContext{
    public void insertEmployee(Employee employee){
        try {
            String sql = "INSERT INTO [Employees]\n" +
                    "           ([e_first_name]\n" +
                    "           ,[e_last_name]\n" +
                    "           ,[e_gender]\n" +
                    "           ,[e_date_of_birth]\n" +
                    "           ,[e_address]\n" +
                    "           ,[e_phone]\n" +
                    "           ,[e_mail])\n" +
                    "     VALUES\n" +
                    "           (?" +
                    "           ,?" +
                    "           ,?" +
                    "           ,?" +
                    "           ,?" +
                    "           ,?" +
                    "           ,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, employee.getFirstname());
            stm.setString(2, employee.getLastname());
            stm.setBoolean(3, employee.isGender());
            stm.setDate(4, employee.getDob());
            stm.setString(5, employee.getAddress());
            stm.setString(6, employee.getPhone());
            stm.setString(7, employee.getMail());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ArrayList<Employee> getEmployees(){
        try {
            String sql = "select e_id,e_first_name,e_last_name,e_gender,e_date_of_birth,"
                    + "e_hire_date,e_salary,e_address,e_phone,e_mail\n" +
                    "from Employees";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            ArrayList<Employee> employees = new ArrayList<>();
            while(rs.next()){
                Employee e = new Employee();
                e.setId(rs.getInt("e_id"));
                e.setFirstname(rs.getString("e_first_name"));
                e.setLastname(rs.getString("e_last_name"));
                e.setGender(rs.getBoolean("e_gender"));
                e.setDob(rs.getDate("e_date_of_birth"));
                e.setHiredate(rs.getDate("e_hire_date"));
                e.setSalary(rs.getFloat("e_salary"));
                e.setAddress(rs.getString("e_address"));
                e.setAddress(rs.getString("e_phone"));
                e.setAddress(rs.getString("e_mail"));
                employees.add(e);
            }
            return employees;
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
     return null;   
    }
}
