 <%@page import="p.ConnectionProvider,java.sql.*,java.util.Properties,javax.mail.*,javax.mail.internet.*"%>
<html>
<body>
<% 
try
{
Connection con =ConnectionProvider.getCon();
Statement pst=con.createStatement();
pst.execute("CREATE TABLE BOOK_TB(CAR VARCHAR2(4000),MODEL VARCHAR2(4000), CNO NUMBER primary key, BOOKING_DATE VARCHAR2(4000), BOOKING_TIME VARCHAR2(4000), ADDITIONAL VARCHAR2(4000), CNAME VARCHAR2(4000), ADDR VARCHAR2(4000), MOBILE VARCHAR2(4000), LOCATION VARCHAR2(4000), EMAIL VARCHAR2(4000))");
System.out.println("1");
con.close();
}
catch(Exception e)
{
	System.out.println("db related problem or tables already exist");
}
%>
</div>
</body>
</html>