<%-- 
    Document   : insert
    Created on : Mar 15, 2022, 11:13:08 AM
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
        Insert product  
        <form action="insert" method="POST">
            Phase:<input type="text" name="phase">   <br/>  
            Kw:<input type="text" name="kw">    <br/> 
            Speed:<input type="text" name="speed">   <br/>  
            Country:<input type="text" name="country">  <br/>   
            Price:<input type="text" name="price">    <br/> 
            Quantity:<input type="text" name="quantity">    <br/> 
            <input type="submit" value="Insert">
        </form>
        
    </body>
</html>
