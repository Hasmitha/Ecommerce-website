<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<jsp:include page="header.jsp" flush="true"/>
    <body>
        <div align="center">
            <form action="Registration" method="post">
                User name : <input type="text" name ="user" required ="required"> <br> <br>
                Password : <input type="password" name ="password" required ="required"> <br> <br>
                <input type ="submit" value ="Register">
            </form>
        </div>     
    </body>
</html>
