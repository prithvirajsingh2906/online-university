<%@page import="code.connection"%>
<%@page import="Mail.SendMailAction"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
HttpSession httpSession = request.getSession(true);
String sid = (String)httpSession.getAttribute("sid");
String semail = (String)httpSession.getAttribute("semail");

Connection con = connection.myconnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from studentrejidetails where semail='"+semail+"' AND sid = '"+sid+"'");
if(rs.next()){
	
	new SendMailAction().sendMail(semail, "display sid", sid);
	response.sendRedirect("studentlogin.jsp");
}


%>
</body>
</html>