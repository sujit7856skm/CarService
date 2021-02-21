<%@include file="header1.jsp"%>			 
  <%
      HttpSession hs=request.getSession();
       String car=(String)hs.getAttribute("car");
       String model=(String)hs.getAttribute("model");
       
       out.println(car);
       out.println(model);
       
  %>
  <div class="container">
     
     <div class="row">
        <div class="col-md-8">
            <div class="jumbotron">
                <h3>standard servicing</h3>
                <font color="red">Price->Rs.3424 Time:6 hrs</font>
                <ul> 
                   <li>40 points check up</li>
                   <li>Exterior wash and interior cleaning</li>
                   <li>Every 10000 km or 6 months</li>
                   <li>consumable replacement</li>
                   
                </ul>
                <a href="book.jsp" class="btn btn-success">Book</a>
                <a href="#" class="btn btn-success">Info</a>
            </div>
        </div>
        <div class="col-md-4">
            <h1>your summery</h1>
        </div>
        
     </div>        
     
  </div>

<%@include file="footer.jsp"%>			 
