<%-- 
    Document   : login
    Created on : Feb 28, 2022, 8:27:45 PM
    Author     : tkoko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<!--        <form action="login" method="POST">
        Username:<input type="text" name="user"><br/>
        Password:<input type="text" name="pass"><br/>   
        <input type="submit" value="Login">
        </form>-->
         <div class="login-page">
  <div class="form">
      <form class="login-form" action="login" method="POST">
          <input type="text" placeholder="username" name="user"/>
          <input type="password" placeholder="password" name="pass"/>
          <button type="submit">LOGIN</button>
    </form>
  </div>
</div>
    </body>
   
</html>
