<%@include file="header2.jsp"%>
<%@page import="java.sql.*,p.*" %>			 
    <h1>welcome admin</h1> 
    
    <div class="row">
       <div class="col-md-4">
       </div>
       <div class="col-md-4">
   <%            
    
   
   int cno=Integer.parseInt(request.getParameter("cno"));
   
      try
      {
       Connection con=ConnectionProvider.getCon();
       Statement stmt=con.createStatement();
       ResultSet rs=stmt.executeQuery("select *from book_tb where cno="+cno);
      
      if(rs.next())
           {
         	%>
         	  <form action="bookingupdatedb.jsp" method="post">
                    
                      <h2>Booking and date time</h2>
                      <table class="table">
                       <tr>
                   <th>Car</th><td><input type="text" name="car" readonly value=<%=rs.getString(1) %>></td><th>Model</th><td><input type="text" name="model" readonly value=<%=rs.getString(2) %>></td>
                 </tr>
                            <tr>
	                           <td>cno</td><td><input type="number" readonly name="cno" value="<%=rs.getInt(3)%>"></td>
	                           <td>Date</td><td><input type="date" name="booking_date" value="<%=rs.getString(4)%>"></td>
	                        </tr>
	                       <tr>
	                           <td>Time</td><td><input type="time" name="booking_time"value="<%=rs.getString(5) %>"></td>     
	               
	                           <td>Additional</td><td><input type="text" name="additional" value="<%=rs.getString(6) %>"></td>     
	                     
	                        </tr>
	                      
                      </table>
                      <h2>Customer Details</h2>
                      <table class="table">
                          
             
	                        <tr>
	                           <td>Name</td><td><input type="text" name="cname" value="<%=rs.getString(7)%>"></td>
	                           <td>Address</td><td><input type="text" name="addr" value="<%=rs.getString(8) %>"></td>     
	                        </tr>
	                       <tr>
	                           <td>Mobile</td><td><input type="text" maxlength="10" minlength="10" name="mobile" value="<%=rs.getString(9) %>"></td>
	                           <td>location</td><td><input type="text" required name="location"value="<%=rs.getString(10) %>"></td>     
	                        </tr>
	                        <tr>
	                            <td>Email</td><td><input type="email" name="email" value="<%=rs.getString(11) %>"></td>     
	                           
	                        </tr>
	                        <tr>
	                           
	                            <td><input type="submit" value="Update" class="btn btn-success"></td>     
	                        </tr>
	                        
	                      
                      </table>
                      </form>
           
         	
         	
         	
         	<%
         	}
       
       con.close();
      }
   catch(Exception e)
     {
	   
     }
   
 %>
       </div>
       <div class="col-md-4">
       </div>
   
    </div>
   
    
    
    
<%@include file="footer.jsp"%>			 
