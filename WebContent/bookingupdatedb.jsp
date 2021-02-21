<%@include file="header2.jsp"%>
<%@page import="java.sql.*,p.*" %>			 
    
    
    <div class="row">
       <div class="col-md-4">
       </div>
       <div class="col-md-4">
   <%  
    int cno=Integer.parseInt(request.getParameter("cno")); 
   String booking_date=request.getParameter("booking_date");
   String booking_time=request.getParameter("booking_time");
   String additional=request.getParameter("additional");
   String cname=request.getParameter("cname");
   String addr=request.getParameter("addr");
   String mobile=request.getParameter("mobile");
   String location=request.getParameter("location");
   String email=request.getParameter("email");

      try
      {
       Connection con=ConnectionProvider.getCon();
      
      
      PreparedStatement pst=con.prepareStatement("update book_tb set booking_date=?,booking_time=?,additional=?,cname=?,addr=?,mobile=?,location=?,email=? where cno=?");
      
       pst.setString(1,booking_date);
       
       pst.setString(2,booking_time);
       pst.setString(3,additional);
       pst.setString(4,cname);
       pst.setString(5,addr);
       pst.setString(6,mobile);
       pst.setString(7,location);
       pst.setString(8,email);
       pst.setInt(9,cno);
       pst.executeUpdate();
       con.close();
       response.sendRedirect("allbooking.jsp?msg=successfully updated");
     
       
       
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
