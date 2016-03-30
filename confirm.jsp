<!DOCTYPE html>
<html>
  <head>
    <title> Gown Store|Confirm</title>
	
	
  </head>
  <body style="background-color:Purple";>
    <br>
	 <center>
	    <div style="background-color:#FFFFFF;width:1000px; font-family:Serif">
	      <!--  Header-->
					<div style="width: 1000px;height: 150px;font-size: 1.5em;">
						  <div style="float: left;margin:10px 0px 0px 10px;">
							  <a href="index.html"> <img src="Logo.jpg" ></a>
						   </div>
						   <div style="float:right; width: 170;height:100; margin:10px;background-color:White;">
						      <div style="float: right; width: 150px; height: 40px; margin: 10px; background-color:#CC99CC; border-radius: 5px;">
							        <a href="Index.html" style="color:Snow;font-size: 0.8em;text-decoration: none;">Logout</a>
						      </div>
						      <br>
						      <div style="float: right; width: 150px; height: 40px; margin: 10px; background-color:#CC99CC; border-radius: 5px;">
							        <a href="Settings.html" style="color:Snow;font-size: 0.8em;text-decoration: none;">Settings</a>
						      </div>
						   </div>
					</div>	  
					<hr size="5px" color="Thistle" width="98%" style="clear: both;">
				<div style="width:800px; height:400px; align:center;">
				  <br><br>
				  <font size="5em;">YOUR ORDER</font>
				  <hr size="5px" color="Thistle" width="20%" style="margin-top: 0px;"size="2" color="Thistle" style="clear: both;">
				  <br>
				  <p> Please confirm that you wish to order the following items</p>	
				  <table border="0"; align="center"; style="width:500;">
				     <tr> <td style="font-size: 15px;border-right: 1pt solid ;border-bottom : 1pt solid ;padding: 5px;">
					     <b>Item Number</b>
                     </td>
					 <td style="font-size: 15px;padding: 5px;border-bottom : 1pt solid;">
					     <b>Cost</b>
                     </td>
					   </tr>
				<%@ page import="java.sql.*" %>
			    <%@ page import="java.io.*,java.util.*" %>
		            <%@ include file="model/connection.jsp" %>
			    <%	int user_id = 0;
			    	int total = 0;
				ArrayList<Integer> list = new ArrayList<Integer>;
				ResultSet resultset = st.executeQuery("select * from cart where user_id="+user_id+"");	
	while(resultset.next()) {	
	list.add(Integer.parseInt(resultset.getString("product_id");
	}
	for(int i = 0; i< list.length; i++)
{
				ArrayList<Integer> list = new ArrayList<Integer>;
				ResultSet resultset = st.executeQuery("select * from products where id="+list[i]+"");	
				while(resultset.next()) {	
	
%>		
					   <tr> <td style="font-size: 15px;border-right: 1pt solid ;padding: 5px;">
					     <b><%=resultset.getString("id")%></b>
                     </td>
					 <td style="font-size: 15px;">
					     <b><%=resultset.getString("id")%></b>
                     </td>
					   </tr>
					   <%} total = total + Integer.parseInt(resultset.getString("id"));}%>
					   <tr> <td style="font-size: 15px;border-right: 1pt solid ;border-top : 1pt solid ;padding: 5px;">
					     <b>Total</b>
                     </td>
					 <td style="font-size: 15px;padding: 5px;border-top : 1pt solid;">
					     <b>7000</b>
                     </td>
					   </tr>
				  </table>
				  <br>
				  <br>
				  <input type="submit" value="Submit" style="font-size:20px;background-color:Wheat;font-family:Serif; color:Purple;border:none; border-radius:5px; height:30px;width:100px;"  >
				  </div>  
				  <hr size="5px" color="Thistle" width="98%" style="clear: both;">
				  <br>
				  <br>
	</body>
	</html>
				  
				  
