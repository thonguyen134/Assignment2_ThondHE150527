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
        <c:if test="${sessionScope.shoppingcart==null}">
            <p>don't have anything</p>
        </c:if>
            <c:if test="${sessionScope.shoppingcart!=null}">
        <table border="1px">
            <tr>
                <td>Id</td>
                <td>Phase</td>
                <td>Kw</td>
                <td>Speed</td>
                <td>Country</td>
                <td>Price</td>
                <td>Quantity</td>
                <td>Unitprice</td>
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
                <tr>
                    <td colspan="7">Total</td>
                    <td>${sessionScope.shoppingcart.total}</td>
                </tr>
        </table>
                <form action="shopping" method="POST">
                Information Customer:<br/>
                Name:<input type="text" name="name"><br/>
                Phone:<input type="text" name="phone"><br/>
                Address:<input type="text" name="address"><br/>
                    <input type="submit" value="Buy">
                </form>
                </c:if>
    </body>
</html>
