<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ include file="connection.jsp" %>
<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
		
	ResultSet resultset = st.executeQuery("select * from users where email='"+email+"'");	
	while(resultset.next()) {	
		
	if(resultset.getString("password").equals(password))
	{
		response.sendRedirect("../Home.html");
		session.setAttribute( "theEmail", email );
	}
	
	else
		out.println("password mismatch");
	break;


} 

%>
 


