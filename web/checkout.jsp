
<html>
<jsp:include page="header.jsp" flush="true"/>
<h1>Please enter your shipping information</h1>
<p>
  
<form action="CheckoutServlet" method="post">

<table>
<tr><td>Name:</td><td><input type="text" name="name" required="required"></td></tr>
<tr><td>Address:</td><td><input type="text" name="address1" required="required"></td>
</tr>
<%--<tr><td></td><td><input type="text" name="address2"></td></tr>--%>
<tr><td>City:</td><td><input type="text" name="city" required="required"></td></tr>
    <td>State:</td>
    <td><input type="text" name="state" size=2 maxlength=2></td></tr>
<tr><td>Postal Code (Zip in U.S.):</td>
    <td><input type="text" name="postalCode" required="required"></td></tr>
</table>
<%--<tr><td>Country:</td><td><input type="text" name="country"></td></tr>
<tr></tr>
<tr><td>Email Address:</td><td><input type="text" name="email">
</td></tr>--%>

<input type="submit" value="Proceed to billing">
</form>
</body>
</html>