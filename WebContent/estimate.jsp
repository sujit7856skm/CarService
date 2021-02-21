<%@page import="java.sql.*,p.*,javax.mail.*,javax.mail.internet.*" %>
<%@include file="header2.jsp"%>	
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
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
	      <h1>welcome admin</h1> 
    
    <div class="row">
       <div class="col-md-4">
       </div>
       <div class="col-md-8">
     
    <div data-ng-app="" data-ng-init="service=3424;adcharge">
        
         <form action="estimatedb.jsp" method="post">
              <table class="table">
                 <tr>
                   <th>Customer No.</th><td><input type="text" name="cno" readonly value=<%=rs.getInt(3) %>>
                 </tr>
             
                 <tr>
                   <th>Car</th><td><input type="text" name="car" readonly value=<%=rs.getString(1) %>></td>
                   <th>Model</th><td><input type="text" name="model" readonly value=<%=rs.getString(2) %>></td>
                 </tr>
                 <tr>
                   <th>Service Charge</th><td><input type="number" ng-model="service" name="scharge"></td>
                   <th>Additional Charge</th><td><input type="number" ng-model="adcharge" name="adcharge"></td>
                 </tr>
                <tr>
                      <th>Total</th><td><input type="number" name="total" value= {{(service+adcharge)}}></td><th>Total + GST(14%)</th><td><input type="number" name="totalgst" value="{{(service+adcharge)*14/100+(service+adcharge)}}"></td>
                 </tr>
                 <tr>
                      <th>Email</th><td><input type="email" name="email" value="<%=rs.getString(11) %>"></td>
                 </tr>
                 <tr>
                   <th><input type="submit" value="Send to customer"></th><th><a href="#" class="btn btn-primary">PRINT</a></th><th><a href="#" class="btn btn-primary">Cancel</a></th>
                 </tr>
              </table>
         </form>
    </div>  
       </div>
       
   
    </div>
   
	<%   
	
    }
  con.close();
  }
  catch(Exception e)
  {
	  
  }

		%> 
    
    
    
    
<%@include file="footer.jsp"%>			 
