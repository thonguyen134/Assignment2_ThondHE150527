<%-- 
    Document   : list
    Created on : Mar 16, 2022, 10:30:25 PM
    Author     : tkoko
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/list.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <table border='1px'>
            <thead>
            <tr>
                <td></td>
                <td>Customer</td>
                <td>Salesman</td>
                <td>Date</td>
                <td>Unitprice</td>
                <td>Details</td>
            </tr>
             </thead>
             <tbody>
            <c:forEach items="${requestScope.orders}" var="o">
                <tr>
                    <td>${o.id}</td>
                    <td>${o.customerName}</td>
                    <td>${o.username}</td>
                    <td>${o.dateOrder}</td>
                    <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${o.total}" /></td> 
                    <td><a href="detail?id=${o.id}">Details</a>
                    </td>
                </tr>
            </c:forEach>
               </tbody>
        </table>
    </body>
</html>
