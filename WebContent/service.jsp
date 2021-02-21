<%@include file="header1.jsp"%>			 
  <div class="container">
     
     <div class="row">
     <%
       String state=request.getParameter("state");
     String car=request.getParameter("car");
     String model=request.getParameter("model");
     HttpSession hs=request.getSession();
     hs.setAttribute("car", car);
     hs.setAttribute("model", model);
     
    
     
     if(state!=null)
     {
       out.println(state);
     }
     %>
             <div class="col-md-4">
        
                 <a href="carservicing.jsp"><img src="images/Car-Servicing.png"/></a>
                 <h1>Car-Servicing</h1>
                 <p>complete service including engine oil and filters change.genuine spare parts.</p>
             </div>
             <h4>How can I help with <%=car%></h4><h4><%=model%></h4>
             
             <div class="col-md-4">
             
                 <a href="carrepair.jsp"><img src="images/Car-Repair.png"/></a>
                  <h1>Car-Repair</h1>
                  <p>All types of car repair-clutch overhaul,breaks overhoul etc.</p>
             </div>
             <div class="col-md-4">
             
             
                 <a href="#"><img src="images/Car-Denting.png"/></a>
             <h1>Car-Denting</h1>
             <p>Fix all the scratches and dents for a brand new look for your car
                1 year warranty.
             </p>
             </div>
             
     </div>
  </div>

<%@include file="footer.jsp"%>			 
