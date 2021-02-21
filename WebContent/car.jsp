
       <%
             String state=request.getParameter("state");
       		 
             String c1[]={"A Star(Petrol)","Alto(Petrol)","Alto(CNG)","Alto k10(CNG)","Baleno"};
             String c2[]={"Accord(Petrol)","Amaze(Diesel)","Brio(Petrol)","City(Petrol)","City(Petrol)"};
             String c3[]={"Accent(Petrol)","Accent(Diesel)","Creta(Petrol)","Creta(Diesel)","Eon(LPG)"};
             String c4[]={"Aria(Diesel)","Bolt(Petrol)","Bolt(Diesel)","Indica Vista(Petrol)","Nano(Petrol)"};
             String c5[]={"Camry(Petrol)","Etios(Petrol)","Etios(Diesel)"};
             String c6[]={"Bolero(Petrol)","KUV 100(Petrol)","KUV 100(Diesel)"};
               
         
             if(state.trim().equalsIgnoreCase("Maruti Suzuki"))
             {
            	 for(String c:c1)
            	 {
            		 out.println("<option>"+c+"</option>");
            		
            	 }
             }
             else if(state.trim().equalsIgnoreCase("Honda"))
             {
            	 for(String c:c2)
            	 {
            		 out.println("<option>"+c+"</option>");
            	 }
             }
             else if(state.trim().equalsIgnoreCase("Hyundai"))
             {
            	 for(String c:c3)
            	 {
            		 out.println("<option>"+c+"</option>");
            	 }
             }
             else if(state.trim().equalsIgnoreCase("Tata"))
             {
            	 for(String c:c4)
            	 {
            		 out.println("<option>"+c+"</option>");
            	 }
             }
             else if(state.trim().equalsIgnoreCase("Toyota"))
             {
            	 for(String c:c5)
            	 {
            		 out.println("<option>"+c+"</option>");
            	 }
             }
             else if(state.trim().equalsIgnoreCase("Mahindra"))
             {
            	 for(String c:c6)
            	 {
            		 out.println("<option>"+c+"</option>");
            	 }
             }
             else
             {
            	 out.println("<option>First select car</option>");
             }
             
                    
       %>
       
   