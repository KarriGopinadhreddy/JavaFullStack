<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Login</title></head>
<body>
<form method="post" action="login.jsp">
<center>
<table border="1" width="30%">
<tr><th colspan="2">Login Here</th></tr>
<tr><td>User Name</td><td><input type="text" name="uname"/></td></tr>
<tr><td>Password</td><td><input type="password" name="pass"/></td></tr>
<tr><td><input type="submit" value="Login"/></td>
    <td><input type="reset" value="Reset"/></td></tr>
<tr><td colspan="2">Yet Not Registered!! <a href="reg.jsp">Register Here</a></td></tr>
</table>
</center>
</form>
</body>
</html>
