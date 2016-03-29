<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
Connection connection = null;
Statement st = null;
try {
String connectionURL = "jdbc:mysql://localhost:3306/iplab";
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* user name = root
password =ur mysql password. */
connection = DriverManager.getConnection(connectionURL, "root", "123");
st = connection.createStatement();

}
catch(Exception ex){
}

%>


