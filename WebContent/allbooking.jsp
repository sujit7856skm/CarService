<%@include file="header2.jsp"%>	
<%@page import="java.sql.*,p.*" %>		 
    <center><h1>All Bookings</h1></center> 
    
   
   <% 
   String msg=request.getParameter("msg");
   if(msg!=null)
   {
	   out.println(msg);
   }
	   
   try
      {
       Connection con=ConnectionProvider.getCon();
       Statement stmt=con.createStatement();
       ResultSet rs=stmt.executeQuery("select *from book_tb");
       %><table class="table">
       <tr>
       <th>C.No</th><th>Date</th><th>Time</th><th>Additional</th><th>Name</th>
       <th>Address</th><th>Mobile</th><th>locatation</th><th>email</th>
        <th>Update</th><th>Delete</th><th>Estimate</th>
        </tr>
       <%
   
       while(rs.next())
       {
    	   %>
    	     
             <tr>
    	       <td><%=rs.getInt(3)%></td>
    	       <td><%=rs.getString(4)%></td>
    	       <td><%=rs.getString(5)%></td>
    	       <td><%=rs.getString(6)%></td>
    	       <td><%=rs.getString(7)%></td>
    	       <td><%=rs.getString(8)%></td>
    	       <td><%=rs.getString(9)%></td>
    	       <td><%=rs.getString(10)%></td>
    	       <td><%=rs.getString(11)%></td>
 <td><a href="bookingupdate.jsp?cno=<%=rs.getInt(3)%>">Update</a></td>
 <td><a href="bookingdelete.jsp?cno=<%=rs.getInt(3)%>">Delete</a></td>
 <td><a href="estimate.jsp?cno=<%=rs.getInt(3)%>">estimate</a></td>
 
    	     </tr>       
    	         
    	     
    	   <% 
       }
      %> </table><%	   
       con.close();
      }
   catch(Exception e)
     {
	   out.println(e);
     }
   
   %>
    
    
    
<%@include file="footer.jsp"%>			 
