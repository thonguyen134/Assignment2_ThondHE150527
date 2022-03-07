<%-- 
    Document   : timekeeping
    Created on : Mar 7, 2022, 11:30:28 AM
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
        <c:forEach items=""></c:forEach>
            <form action="">
                <!--option year -->
                Year:<select name="year">
                <c:forEach items="${requestScope.listyear}" var="year" >
                    <option 
                        ${(requestScope.year==year)?"Selected=\"Selected\"":""}
                        value="${year}">${year}</option>
                </c:forEach>
            </select> 
            <!--option Month: -->
            Month:<select name="month">
                <c:forTokens items="1,2,3,4,5,6,7,8,9,10,11,12" delims="," var="month">
                    <option
                        ${(requestScope.month==month)?"Selected=\"Selected\"":""}
                        value="${month}"><c:out value="${month}"/></option> 
                </c:forTokens>
            </select> 
            <input type="submit" value="Search">
        </form>
        <table border="1px">
            <tr>
                <td></td>
                <c:forEach items="${requestScope.employees}" var="e">
                    <td>
                    ${e.id}:
                    ${e.firstname}
                    ${e.lastname}
                    </td>
                </c:forEach>
            </tr>
            <c:forTokens items="1-3-2022,2-3-2022,3-3-2002" delims="," var="date">
                <tr><td><c:out value="${date}"/></td> 
                    <c:forEach items="${requestScope.employees}" var="e">
                        <td><input type="checkbox" name="date${e.id}" value="${date}"></td>
                </c:forEach>
                </tr>
            </c:forTokens>
            
        </table>

        
        <br/>

    </body>
</html>
