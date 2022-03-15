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
        <form action="search" method="POST">
            Phase:<select name="phase">
                <option
                    ${(requestScope.searchPhase==-1)?"selected=\"selected\"":""}
                    value="-1">All</option>
                <option
                    ${(requestScope.searchPhase==1)?"selected=\"selected\"":""}
                    value="1">1</option>
                <option 
                    ${(requestScope.searchPhase==3)?"selected=\"selected\"":""}
                    value="3">3</option>
            </select>
            Kw:<input size="5" type="text" list="listkw" 
                      placeholder="Enter"  name="kw"
                      <c:if test="${requestScope.searchKw!=null}">
                          value ="${requestScope.searchKw}"
                      </c:if>
                          <c:if test="${requestScope.searchKw==null}">
                              value="All"
                      </c:if>
                      />
            <datalist id="listkw">
                <c:forTokens items="0.125,0.15,0.37,0.5,0.75,1.1,1.5,2.2,2.5,3,3.7,4,4.5,5,7.5,11,15,17,18.5,22,24,25,28,30,33,37,40,45,55,75,90,100,110,132,160,220" delims=","  var="i">
                    <option
                        
                        value="${i}">${i}Kw</option>
                             </c:forTokens>
            </datalist>
            Speed:<input type="text" name="speed" size="3" placeholder="Enter" 
                         <c:if test="${requestScope.searchSpeed!=null}">
                          value ="${requestScope.searchSpeed}"
                      </c:if>
                          <c:if test="${requestScope.searchSpeed==null}">
                              value="All"
                      </c:if>
                         >
            <input type="submit" value="Search" >
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
