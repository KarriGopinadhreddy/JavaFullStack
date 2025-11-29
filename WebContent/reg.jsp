<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Registration</title></head>
<body>
<form method="post" action="registration.jsp">
<center>
<table border="1" width="30%">
<tr><th colspan="2">Enter Information Here</th></tr>
<tr><td>First Name</td><td><input type="text" name="fname"/></td></tr>
<tr><td>Last Name</td><td><input type="text" name="lname"/></td></tr>
<tr><td>Email</td><td><input type="text" name="email"/></td></tr>
<tr><td>User Name</td><td><input type="text" name="uname"/></td></tr>
<tr><td>Password</td><td><input type="password" name="pass"/></td></tr>
<tr><td><input type="submit" value="Submit"/></td>
    <td><input type="reset" value="Reset"/></td></tr>
<tr><td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td></tr>
</table>
</center>
</form>
</body>
</html>
