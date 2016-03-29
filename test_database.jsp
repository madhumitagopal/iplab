<!DOCTYPE HTML>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>


<head>
<title>Techie Touch | Mysql connectivity</title>
</head>
<body>
<h1>Connection status </h1>
<%
try {
String connectionURL = "jdbc:mysql://localhost:3306/TEST";
Connection connection = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* user name = root
password =ur mysql password. */
connection = DriverManager.getConnection(connectionURL, "root", "123");
if(!connection.isClosed())
%>
<font size="+3" color="green"></b>
<%
out.println("Successfully connected to " + "MySQL server using TCP/IP...");
connection.close();
}
catch(Exception ex){
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</font>
<p>techie-touch.blogspot.com</p>
<p>For more details..<a href=" http://techie-touch.blogspot.com">Visit</a></p>
</body>
</html>

<%
Connection con = null;
Statement st = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
con = DriverManager.getConnection( "jdbc:mysql://localhost:3306/TEST","root","123");
st = con.createStatement();
%>
