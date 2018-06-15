<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<jsp:include page="header.jsp" flush="true"/>
    <form  method="post" action="Login">
            <center>
            <table border="1" cellpadding="5" cellspacing="2">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="Username" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Login" />
                           
                            &nbsp;&nbsp; <%--${message} --%>
                            <input type="reset" value="Reset" />
                            <a href="registration.jsp"> First time user? </a>
                        </td>                        
                    </tr>                    
                </tbody>
            </table>
            </center>
                            <label name="result"/>
        </form>
                                      </div>
   </div>
                                </div>
                            
                            
                            
    </body>
</html>
