<%-- 
    Document   : shopping
    Created on : Mar 16, 2022, 4:27:36 PM
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
        <table border="1px">
            <tr>
                <td></td>
                <td>Phase</td>
                <td>Kw</td>
                <td>Speed</td>
                <td>Country</td>
                <td>Price</td>
                <td>Quantity</td>
            </tr>
            <c:forEach items="${sessionScope.shoppingcart.orderDetails}" var="o">
                <tr>
                    <td>${o.product.id}</td> 
                    <td>${o.product.phase}</td> 
                    <td>${o.product.kw}</td> 
                    <td>${o.product.speed}</td> 
                    <td>${o.product.country}</td> 
                    <td>${o.product.price}</td> 
                    <td>${o.quantity}</td> 
                    <td>${o.unitPrice}</td> 
                </tr>
            </c:forEach>
            
        </table>
    </body>
</html>
