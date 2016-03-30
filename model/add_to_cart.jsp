<%@ page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ include file="connection.jsp" %>
<%
	Object user_id_temp = session.getAttribute( "user_id");
	int user_id = Integer.parseInt((String)user_id_temp);
	int quantity = 1;
	String product_id_temp = request.getParameter("product_id");
	int product_id = Integer.parseInt(product_id_temp);
	String sql = "INSERT into cart(user_id,product_id,quantity) VALUES("+user_id+","+product_id+","+quantity+")";
st.executeUpdate(sql);
	response.sendRedirect("../Home.html");
	
%>

