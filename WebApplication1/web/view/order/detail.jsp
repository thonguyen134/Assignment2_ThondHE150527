<%-- 
    Document   : detail
    Created on : Mar 16, 2022, 10:42:03 PM
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
    </head>
    <body>
        <table border='1px'>
            <tr>
                <td>Phase</td>
                <td>Kw</td>
                <td>Speed</td>
                <td>Country</td>
                <td>Price</td>
                <td>Quantity</td>
                <td>UnitPrice</td>
            </tr>
            <c:forEach items="${requestScope.detail}" var="d">
                <tr>
                    <td>${d.product.id}</td>
                    <td>${d.product.kw}</td>
                    <td>${d.product.speed}</td>
                    <td>${d.product.country}</td>
                    <td>${d.product.price}</td>
                    <td>${d.product.quantity}</td>
                    <td>${d.product.quantity*d.product.price}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
