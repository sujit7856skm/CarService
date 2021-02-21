<%@page import="java.sql.*,p.*" %>		 
   <% 
     int cno=Integer.parseInt(request.getParameter("cno"));
      
   try
   {
	   
   
      Connection con=ConnectionProvider.getCon();
      Statement stmt=con.createStatement();
      stmt.executeUpdate("delete from book_tb where cno="+cno);
      
      response.sendRedirect("allbooking.jsp?msg=succeffully deleted");
     // response.setHeader("refresh","120;URL=allbooking.jsp?msg=successfully deleted");
   }
   catch(Exception e)
   {
	   out.println(e);
   }
      
   
   
   %>
    
    
    
		 
