<%
   String name=request.getParameter("name");
   String pass=request.getParameter("pass");
   if(name.trim().equals("admin")&&pass.trim().equals("admin"))
   {
	   HttpSession hs=request.getSession();
	   hs.setAttribute("name",name);
	   response.sendRedirect("welcome.jsp");
   }
   else
   {
	   response.sendRedirect("error.jsp");
   }
    

 

%>