 <%@page import="p.*,java.sql.*,java.util.Properties,javax.mail.*,javax.mail.internet.*"%>
<%@include file="header2.jsp"%>			 
<%    
 int cno=Integer.parseInt(request.getParameter("cno"));
String car=request.getParameter("car");
String model=request.getParameter("model");
String scharge=request.getParameter("scharge");
String adcharge=request.getParameter("adcharge");
String total=request.getParameter("total");
String totalgst=request.getParameter("totalgst");
String to=request.getParameter("email");
String from=""; 
String password=""; 
String host="smtp.gmail.com";
try
{
Properties p=new Properties();
Session sess=Session.getInstance(p); 
MimeMessage msg =new MimeMessage(sess); 
InternetAddress toId =new InternetAddress(to);
InternetAddress fromId =new InternetAddress(from);	
msg.setFrom(fromId);
msg.setRecipient(Message.RecipientType.TO,toId);	
msg.setSubject("estimation");
msg.setText("Car No\t:"+cno+"\nCar\t:"+car+"\nModel\t:"+model+"\nService Charge\t:"+scharge+"\nAdditional Charge\t:"+adcharge+"\ntotal\t:"+total+"\nTotal+Gst(14%)\t:"+totalgst); 

Transport tpt = sess.getTransport("smtps"); 
tpt.connect(host,from,password); 
tpt.sendMessage(msg,msg.getAllRecipients()); 
tpt.close(); 
System.out.println("mail send....");
}
catch(Exception e)
{
e.printStackTrace();
}

response.sendRedirect("index.jsp?msg=msg sent to customer successfully");
%>
   
    
    
    
<%@include file="footer.jsp"%>			 
