<!DOCTYPE html>
<html>
  <head>
    <title> Gown Store|Home </title>
	
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
						   <div style="float: right; width: 150px; height: 40px; margin: 50px; background-color:#CC99CC; border-radius: 5px;">
							<a href="login.html" style="color:Snow;font-size: 0.8em;text-decoration: none;">Login/SignUp</a>
						  </div>
					</div>	  
					<hr size="5px" color="Thistle" width="98%" style="clear: both;">
          <!-- Body -->
			    <%@ page import="java.sql.*" %>
			    <%@ page import="java.io.*,java.util.*" %>
		            <%@ include file="model/connection.jsp" %>
			    <%	String category="bridal_gowns";
				int sl_no = 1;
				ResultSet resultset = st.executeQuery("select * from products where category='"+category+"'");	
	while(resultset.next()) {	
%>		
	<form name= frm method=POST action = "model/add_to_cart.jsp"> 
<div style="width: 1000px; clear: both; background-color: white;height: 250px;">
						   <div style="margin: 20px 0 0 10px;float: left;width: 250px;">
							    <img src=<%=resultset.getString("image_url")%> width="220px;"/>
						   </div>
						  <div style="float: right;margin: 20px 40px 0 0;width: 450px;font-size: 20px;text-align: justify ;font-family:Verdana; color:Silver;">
							     <div width="200px" style="float: left;  padding-right: 10px;">
								  <span style="font-size:23px; color:Gold">sl_no</span>
							   </div>
							   <div width="200px" style="float: right; padding: 0 30px 0 20px;">
								  <span style="font-size:23px;color:Gold;"><%=resultset.getString("price")%></span>
							   </div>
							   <br><br>
								<%=resultset.getString("description")%>
							   
							   <br><br><br>
						    </div>
					</div>
					<input type="hidden" name="product_id" value=<%=resultset.getString("id")%>>
					<input type="submit" value="add to cart">

              </div>
                 <% sl_no = sl_no + 1;
							   }
							   %>
							   
							
	       </center>
	 </body>
</html>
  
