<%@ page import="java.sql.*" %>
<%
String user = request.getParameter("uname");
String pass = request.getParameter("pass");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/test?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
    "jsp_user",
    "jsp_pass"
);




PreparedStatement pst = con.prepareStatement(
"INSERT INTO members(first_name,last_name,email,uname,pass,regdate) VALUES (?,?,?,?,?,CURDATE())"
);

pst.setString(1, fname);
pst.setString(2, lname);
pst.setString(3, email);
pst.setString(4, user);
pst.setString(5, pass);

int i = pst.executeUpdate();

if(i > 0){
    response.sendRedirect("welcome.jsp");
} else {
    response.sendRedirect("reg.jsp");
}
%>
