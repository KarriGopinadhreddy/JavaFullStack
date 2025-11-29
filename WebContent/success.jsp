<%
if(session.getAttribute("userid") == null){
    response.sendRedirect("index.jsp");
    return;
}
%>
Welcome <%= session.getAttribute("userid") %>
<a href="logout.jsp">Logout</a>
