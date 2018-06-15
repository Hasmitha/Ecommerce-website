<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Catalog</title>
</head>
<body>
    <h1> Welcome ${Username}</h1>
    <div> <form action="cart.jsp" method="post"><input type="submit" value=""view cart"></form></div>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull"
        user="root" password="root"
    />
     
    <sql:query var="list"   dataSource="${myDS}">
        SELECT * FROM catalog;
    </sql:query>
   
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Our products</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Image</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>
            <c:forEach var="catalog" items="${list.rows}">
                <tr>
                    <td><c:out value="${catalog.ProductID}" /></td>
                    <td><c:out value="${catalog.P_Name}" /></td>
                     <td><image  height="600px" width="700px" src="<c:out value="${catalog.Image}"/>"/></td>
                    <td><c:out value="${catalog.Price}" /></td>
                    <td><form action="cart" method="post"><input type="number" name="Quantity" value="quantity"></form>
                    <td><form action="CartServlet" method="post"><input type="submit" value="Cart"></form></td>
                </tr>
            </c:forEach>
        </table>
        
    </div>
</body>
</html>