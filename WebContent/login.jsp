<%@ page import="java.sql.*" %>
<%
String user = request.getParameter("uname");
String pass = request.getParameter("pass");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/test?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC",
    "jsp_user",
    "jsp_pass"
);



PreparedStatement pst = con.prepareStatement(
"SELECT * FROM members WHERE uname=? AND pass=?"
);

pst.setString(1, user);
pst.setString(2, pass);

ResultSet rs = pst.executeQuery();

if(rs.next()){
    session.setAttribute("userid", user);
    response.sendRedirect("success.jsp");
} else {
    out.println("Invalid <a href='index.jsp'>Try Again</a>");
}
%>
