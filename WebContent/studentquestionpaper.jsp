<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="code.connection"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="heading.css" rel="stylesheet" type="text/css">
</head>
<body>
<img class="im" src="images/collage logo.jpg"  ><br><br>
<center>
<%
   String topi=request.getParameter("topic");
 String que=null;
 String a=null;
 String b=null;
 String c=null;
 String d=null;
try
{
Connection con=connection.myconnection();
    	Statement stmt=con.createStatement();
    	ResultSet rs=stmt.executeQuery("select * from facultyquestions where topic='"+topi+"' ");%>
    	
    TOPIC: <%=topi%> <br><br>	
    	
 <form action="stutimetable.jsp" method="post">
 <input type="submit" value="FINISHED" float="right"/> 
    <%	while(rs.next())
    	{
  
        que=rs.getString(4); 
        a=rs.getString(6) ;
    	 b=rs.getString(7) ;
    	 c=rs.getString(8) ;
    	 d=rs.getString(9)  ;   	
    	%>
   
   
  <table>
   

    </tr>
        <tr><td>Question:</td> <td><%=que%></td></tr>
		<tr><td>Options:</td><td>Please mention the correct answer</td></tr>
		<tr><td align="right">A)</td><td><input type="radio" name="options" value="1" required><%= a%></tr>
		<tr><td align="right">B)</td><td><input type="radio" name="options" value="2" ><%=b %></tr>
		<tr><td align="right">C)</td><td><input type="radio" name="options" value="3"><%= c%></tr>
		<tr><td align="right">D)</td><td><input type="radio" name="options" value="4"><%=d %></tr>
	</tr>
  <% }
}
catch(Exception e)
{
e.printStackTrace();
}


%>
	
		
	</table>
	
	</form>
 </center>
</body>
</html>