/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.employees;

import controller.BaseAuthController;
import dal.AccountDBContext;
import dal.EmployeeDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Employee;

/**
 *
 * @author tkoko
 */
public class InsertEmployeeController extends BaseAuthController {



        // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("../view/employee/insert.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //information employee
        String raw_lastname = request.getParameter("lastname");
        String raw_firstname = request.getParameter("firstname");
        String raw_gender = request.getParameter("gender");
        String raw_dob = request.getParameter("dob");
        String raw_hdate = request.getParameter("hdate");
        String raw_salary = request.getParameter("salary");
        String raw_address = request.getParameter("address");
        String raw_phone = request.getParameter("phone");
        String raw_mail = request.getParameter("mail");
        
        //information account
        String raw_user = request.getParameter("user");
        String raw_pass = request.getParameter("pass");
        String raw_displayname  = request.getParameter("displayname");
        
        //check validate
        String lastname = raw_lastname;
        String firstname = raw_firstname;
        boolean gender = raw_gender.equals("male");
        Date dob = Date.valueOf(raw_dob); 
        Date hdate = Date.valueOf(raw_hdate); 
        int salary = Integer.parseInt(raw_salary);
        String address = raw_address;
        String phone = raw_phone;
        String mail = raw_mail;
        Employee employee = new Employee(lastname, firstname, gender, dob, hdate, salary, address, phone, mail);
        String user = raw_user;
        String pass = raw_pass;
        String displayname = raw_displayname;
        Account account = new  Account(user, pass, displayname);
        EmployeeDBContext edb = new EmployeeDBContext();
        AccountDBContext  adb = new AccountDBContext();
        edb.insertEmployee(employee);
        adb.insertAccount(account);
        response.sendRedirect("list");
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
