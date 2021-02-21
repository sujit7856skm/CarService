<%@ include file="header1.jsp" %>
<% 
 String msg=request.getParameter("msg");
if(msg!=null)
{
	out.println(msg);
}

%>
<div class="row">
      <div class="col-md-6">
          <img src="images/banner2.jpg">
      </div>
      <div class="col-md-6">
      
         <fieldset>
            <legend>Login</legend>
          <form action="logindb.jsp">
              UserName<input type="text" name="name"/><br><br>
              Password<input type="password" name="pass"/><br><br>
              <input type="submit" value="Login"/><br><br>
          </form>
           
          </fieldset>
      </div>
      
 
</div>
<%@ include file="footer.jsp" %>
