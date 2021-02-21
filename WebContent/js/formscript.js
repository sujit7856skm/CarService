function fetchCar(str)
{
	
	var req=new XMLHttpRequest();
	req.open("get","car.jsp?state="+str,true);
	req.send();
	
	req.onreadystatechange=function()
	{
		
		if(req.readyState==4&&req.status==200)
			{
			
	document.getElementById("car").innerHTML=req.responseText; 
	          
			}
	};
}