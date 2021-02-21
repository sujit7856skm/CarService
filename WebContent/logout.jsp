<%
  HttpSession hs=request.getSession();
  hs.invalidate();
  response.sendRedirect("login.jsp?msg=successfully logged out");
%>