<%-- 
    Document   : list
    Created on : Mar 10, 2022, 8:45:56 PM
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
        <script>
        function checkDelete(id){
            var result = confirm("Are you sure!");
            if(result==true){
                window.location.href = "delete?id=" + id
            }
        }
    </script>
    </head>
    <body>
        <table border="1px">
            <tr>
                <td>Name</td>
                <td>Gender</td>
                <td>Dob</td>
                <td>Hire date</td>
                <td>Salary</td>
                <td>Address</td>
                <td>Phone</td>
                <td>Mail</td>
                <td>AccountUser</td>
                <td>AccountPass</td>
                <td>DisplayName</td>
            </tr>
            <c:forEach items="${requestScope.employees}" var="e">
                <tr>
                    <td>${e.firstname}${e.lastname}</td>
                    <td><c:if test="${e.gender==true}">
                            <c:out value="Male"></c:out>
                    </c:if>
                    <c:if test="${e.gender!=true}">
                            <c:out value="Female"></c:out>
                    </c:if>
                    </td>
                    <td>${e.dob}</td>
                    <td>${e.hiredate}</td>
                    <td>${e.salary}</td>
                    <td>${e.address}</td>
                    <td>${e.phone}</td>
                    <td>${e.mail}</td>
                    <td>${e.account.username}</td>
                    <td>${e.account.password}</td>
                    <td>${e.account.displayname}</td>
                    <td><a href="update?id=${e.id}">Update</a>
                    <a href="#" onclick="checkDelete(${e.id})">Delelte</a></td>
                </tr>
            </c:forEach>
        </table>
        <a href="insert">Insert</a>
    </body>
    
</html>
