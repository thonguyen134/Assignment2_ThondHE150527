<%-- 
    Document   : search
    Created on : Mar 15, 2022, 10:44:56 AM
    Author     : tkoko
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
//        function getQuantity(id,quantity){
//            var deleteQuantity = prompt("Enter the quantity you want to delete");
//            if(deleteQuantity>quantity){
//                window.location.href = "search";
//                alert("The quantity you want to delete is more than the quantity in stock");
//            }else if(deleteQuantity==null){
//                window.location.href = "search";
//                alert("Please enter quantity!");
//            }else if(deleteQuantity.trim().length==0){
//                window.location.href = "search";
//                alert("Please enter quantity!");
//            }else{
//                window.location.href = "delete?id="+id+"&quantity="+deleteQuantity;
//            }
//        }
        function getQuantity(id){
            var result = confirm("Are you sure?");
            if(result==true){
                window.location.href = "delete?id="+id;
            }
        }
    </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        Hello: ${sessionScope.account.username}
        <form action="search" method="GET">
            Phase:<select name="phase">
                <option value="-1">All</option>
                <option value="1">1</option>
                <option value="3">3</option>
            </select>
            Kw:<input type="text" name="kw" size="3">
            Speed:<input type="text" name="speed" size="3">
            <input type="submit" value="Search">
        </form>
        <table border="1px">
            <tr>
                <td>Phase</td>
                <td>Kw</td>
                <td>Speed</td>
                <td>Country</td>
                <td>Price</td>
                <td>Quantity</td>
                <td><a href="insert">Insert</a></td>
            </tr>
            <c:forEach items="${requestScope.products}" var="p">
                <tr>
                    <td>${p.phase}</td>
                    <td>${p.kw}</td>
                    <td>${p.speed}</td>
                    <td>${p.country}</td>
                    <td>${p.price}</td>
                    <td>${p.quantity}</td>
                    <td>
                        <a href="update?id=${p.id}">Update</a>
                        <a href="#" onclick="getQuantity(${p.id})">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
    
</html>
