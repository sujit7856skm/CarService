 <%@ include file="table_creation _db.jsp" %>
<%@include file="header.jsp"%>			 
 <div class="well" style="margin-top:10px;width:50%"><h4><b>CAR SERVICE ADVANTAGE<b></h4></div>

	<div class="row" style="margin-top:20px;">
		<div class="col-md-3" align="justify">
			<img src="images/bb.jpg" width="300px" height="100px" class="img-responsive img-thumbnail" >
			<h3 style="text-align:center;text-decoration:underline">WE MAKE IT EASY</h3>
			<p>
	Get a quote and book a service online 24/7. Our mechanics will come to your home or office, even on evenings and weekends.		<p>
				<a class="btn" href="#">View details »</a>
			</p>
		</div>
		<div class="col-md-3" align="justify">
				<img src="images/dd.jpg" width="300px" height="100px" class="img-responsive img-thumbnail">
					<h3 style="text-align:center;text-decoration:underline">FAIR AND TRANSPARENT PRICING</h3>
	
			<p>
We offer fair and transparent pricing and savings up to 40% compared to other workshops.

Book with confidence.			<p>
				<a class="btn" href="#">View details »</a>
			</p>
		</div>
		
		<div class="col-md-6" style="margin-top:-10%">
				
			   <center><h1><b>Car Selection</h1><b></center>
           <div id="selectcar" class="jumbotron"> 
			<form action="service.jsp">
                <center>    <label>Your Car</label>
                  <select onchange="fetchCar(this.value)" name="car">
				
							  <option>Select Your Car</option>
							  <option>Maruti Suzuki</option>
							  <option>Honda</option>
							  <option>Hyundai</option>
          				      <option>Tata</option>
               				  <option>Toyota</option>
               				  <option>Mahindra</option>
    
                  </select>
				  
				  <br>
				  <br>
				  <br>
                  
                 <label>Model&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                       <select id="car" name="model">
						  <option>First select Car</option>
							 
						</select>  
          <br><br><br>
               <center><input type="submit" value="GET A QUOTE" class="btn btn-success"/></center>
            </form>
            </div>			
				
		</div>
	</div>
 <div class="well" style="margin-top:10px"><h1>How It Works</h1></div>
 
	<div class="row">
		<div class="col-md-3">
		       <img src="images/a.png">
	    </div>
        <div class="col-md-3">
		<img src="images/b.png">
		</div> 
		
	    
        <div class="col-md-3">
              <img src="images/c.png">
		</div> 
		<div class="col-md-3">
		<img src="images/d.png">
		</div> 
	  </div>
		
		
		
		
	
</div>
<%@include file="footer.jsp"%>			 
