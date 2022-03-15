<%-- 
    Document   : update
    Created on : Mar 15, 2022, 11:13:20 AM
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
        Update product  
        <form action="update" method="POST">
            <input hidden="" name="id" value="${requestScope.product.id}">
            Phase:<input type="text" name="phase" value="${requestScope.product.phase}">   <br/>  
            Kw:<input type="text" name="kw" value="${requestScope.product.kw}">    <br/> 
            Speed:<input type="text" name="speed" value="${requestScope.product.speed}">   <br/>  
            Country:<input type="text" name="country" value="${requestScope.product.country}">  <br/>   
            Price:<input type="text" name="price" value="${requestScope.product.price}">    <br/> 
            Quantity:<input type="text" name="quantity" value="${requestScope.product.quantity}">    <br/> 
            <input type="submit" value="Update ">
        </form>
    </body>
</html>
