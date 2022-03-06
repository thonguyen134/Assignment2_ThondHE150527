<%-- 
    Document   : login
    Created on : Feb 28, 2022, 8:27:45 PM
    Author     : tkoko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="login" method="POST">
        Username:<input type="text" name="user"><br/>
        Password:<input type="text" name="pass"><br/>   
        <input type="submit" value="Login">
        </form>
    </body>
</html>
