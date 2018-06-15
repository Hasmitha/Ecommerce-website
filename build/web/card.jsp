<html>
<jsp:include page="header.jsp" flush="true"/>
<form action="Card" method="post">
 
<h1>Please enter your billing information</h1>
<table>
<tr><td>Name (as it appears on credit card):</td>
    <td><input type="text" name="nameOnCard" required="required"></td></tr>
<tr><td>Credit Card:</td>
    <td><select name="creditCardType" required="required">
    <option value="amex">American Express</option>
    <option value="visa">Visa</option>
    <option value="mc">Mastercard</option>
    <option value="discover">Discover</option>
    <option value="bbbt">Billy Bob's Bank &amp; Trust</option>
    </select></td></tr>
<tr><td>Credit Card Number:</td>
    <td><input type="text" name="creditCardNumber" required="required"></td></tr>
<%--<tr><td>Expiration Date:</td>
    <td><input type="text" name="creditCardExpiration"></td></tr>--%>
</table>
<p>
<input type="submit" value="Complete Order">
</form>
</body>
</html>