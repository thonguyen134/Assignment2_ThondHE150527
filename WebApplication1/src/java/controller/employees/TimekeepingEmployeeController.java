/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.employees;

import Algorithm.Date;
import controller.BaseAuthController;
import dal.EmployeeDBContext;
import dal.TimekeepingDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Employee;

/**
 *
 * @author tkoko
 */
public class TimekeepingEmployeeController extends BaseAuthController {

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
        EmployeeDBContext db = new EmployeeDBContext();
        ArrayList<Employee> employees = db.getEmployees();
        //get year month
        String raw_year = request.getParameter("year");
        String raw_month = request.getParameter("month");
        int year,month;
        int yearNow=LocalDate.now().getYear();
        int monthNow=LocalDate.now().getMonthValue();
        if(raw_year == null && raw_month == null){
            year = yearNow;
            month = monthNow;
        }else{
        year = Integer.parseInt(raw_year);
        month = Integer.parseInt(raw_month);
        }
        ArrayList<Integer> listYear = new ArrayList();
        for(int i = 2019 ;i<=yearNow;i++){
            listYear.add(i);
        }
        Date d = new Date();
        ArrayList<String> dayOfMonth = d.getDayOfMonth(year, month);
        request.setAttribute("dayOfMonth", dayOfMonth);
        request.setAttribute("year", year);
        request.setAttribute("month", month);
        request.setAttribute("listyear", listYear);
        request.setAttribute("employees", employees);
        request.getRequestDispatcher("../view/employee/timekeeping.jsp").forward(request, response);
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
        EmployeeDBContext edb = new EmployeeDBContext();
        ArrayList<Employee> employees = edb.getEmployees();
        for (Employee e : employees) {
            String[] listDate = request.getParameterValues(""+e.getId());
            //add vao database bang ngoai cung
            TimekeepingDBContext tdb = new TimekeepingDBContext();
            tdb.insertTimekeeping(listDate);
            //add t_id voi e_id vao cai bang noi giua
        }
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
