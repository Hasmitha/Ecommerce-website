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
       <%
String name=(String)session.getAttribute("name");%>
    <jsp:include page="header.jsp" flush="true"/>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull"
        user="root" password="root"
    />
     
    <sql:query var="list"   dataSource="${myDS}">
        SELECT * FROM cart;
    </sql:query>
    <h1> Welcome <%=name %></h1>
    <div align="center">
        
        <table border="1" cellpadding="5">
            <caption><h2>Cart</h2></caption>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Image</th>
                <th>Price</th>
            </tr>
            <c:forEach var="cart" items="${list.rows}">
                <tr>
                    <td><c:out value="${cart.Product}" /></td>
                    <td><c:out value="${cart.Quantity}" /></td>
                    <td><image  height="600px" width="700px" src="<c:out value="${cart.Image}"/>"/></td>
                     <td><c:out value="${cart.Price}" /></td>
                     <td><form action="Delete" method="post"><input type="reset" value="Remove from cart"></form></td>
                </tr>
            </c:forEach>
                <td><form action="checkout.jsp" method="post"><input type="submit" name="Proceed to checkout" value="Checkout"></form>
                    <td><form action="product.jsp" method="post"><input type="submit" name="View Catalog" value="Continue Shopping"></form>
        </table>
    </div>
</body>
</html>