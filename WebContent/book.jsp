<%@page import="java.sql.*,p.*" %>
<%@include file="header1.jsp"%>	
		 
  
  <%
    String msg=request.getParameter("msg");
  if(msg!=null)
  {
	  out.println(msg);
  }
  %>
   <%
      HttpSession hs=request.getSession();
       String car=(String)hs.getAttribute("car");
       String model=(String)hs.getAttribute("model");
       
       out.println(car);
       out.println(model);
       
  %>
  
  <div class="container">
  
  
  
     <div class="row">
     <%
     //here this code for auto generated cno
     int cno=0;
           try
              {
        	    Connection con=ConnectionProvider.getCon();  
        	    Statement stmt=con.createStatement();
        	    ResultSet rs=stmt.executeQuery("select max(cno) from book_tb");
        	    if(rs.next())
        	    {
        	    	 cno=rs.getInt(1);
        	    	 cno++;
        	    }
              }
             catch(Exception e)
               {
            	 System.out.println(e);
               }
     
     %>
                 <div class="col-md-8">
                    <form action="bookdb.jsp">
                    
                      <h2>Booking and date time</h2>
                      <table class="table">
                            <tr>
	                           <td>Car</td><td><input type="text" name="car" value=<%=car%> readonly><td>Model</td><td><input type="text" name="model" value=<%=model%> readonly></td>     
	                        </tr>
	                        
                            <tr>
	                           <td>Customer No</td><td><input type="number" name="cno" value=<%=cno%> readonly ><td>Date</td><td><input type="date" name="booking_date" required ></td>     
	                        </tr>
	                       <tr>
	                           <td>Time</td><td><input type="time" name="booking_time"></td><td>Additional</td><td><input type="text" name="additional" ></td>     
	                        </tr>
	                      
                      </table>
                      <h2>Customer Details</h2>
                      <table class="table">
                        
	                        <tr>
	                           <td>Name</td><td><input type="text" name="cname"required></td><td>Address</td><td><input type="text" name="addr"></td>     
	                        </tr>
	                       <tr>
	                           <td>Mobile</td><td><input type="text" maxlength="10" minlength="10" name="mobile" required></td>
	                           <td>location</td><td><input type="text" required name="location"></td>     
	                        </tr>
	                        <tr>
	                           
	                            <td>Email</td><td><input type="email" name="email" required></td>     
	                        </tr>
	                        
	                        <tr>
	                           
	                            <td><input type="submit" value="Book" class="btn btn-success"></td>     
	                        </tr>
	                        
	                      
                      </table>
                      </form>
                 </div>
                 <div class="col-md-4">
                 
                 </div>
                     
             
     </div>

<%@include file="footer.jsp"%>			 
