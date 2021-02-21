<%@ page import="java.sql.*,p.*" %>	 
 <%
    String car=request.getParameter("car");
    String model=request.getParameter("model");
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
      PreparedStatement pst=con.prepareStatement("insert into book_tb values(?,?,?,?,?,?,?,?,?,?,?)");
      pst.setString(1,car);
      pst.setString(2,model);
      
      pst.setInt(3,cno);
      pst.setString(4,booking_date);
      pst.setString(5,booking_time);
      pst.setString(6,additional);
      pst.setString(7,cname);
      pst.setString(8,addr);
      pst.setString(9,mobile);
      pst.setString(10,location);
      pst.setString(11,email);
      pst.execute();
      response.sendRedirect("book.jsp?msg=Successfully registered");
     // out.println("successfully registered");
   }
   catch(Exception e)//polymorphic catch
   {
	  out.println(e);   
   }
  
 %>
		 
