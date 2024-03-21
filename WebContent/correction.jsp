<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="heading.css" rel="stylesheet" type="text/css">

</head>
<body>
<body>
<img class="im" src="images/collage logo.jpg"  ><br><br>
<center>
 <div class="navbar">

<a href="addclass.jsp">ADD CLASS</a>
  <a href="exampaper.jsp">EXAM PAPER</a>
  <a href="facultyuploadtimetable.jsp">TIME TABLE</a>
  
  <a href="checkqueries.jsp">CHECK QUERIES</a>
  <a href="correction.jsp">CORRECTION</a>
 <a href="facultylogin.jsp">LOGOUT</a></li>
 
  
</div>
 </center>
<center>
 <h2>CORRECTION</h2>
 <form action="correction.jsp" method="post">
  <table>
  <tr><td>QUESTION:</td></tr>
  
  <tr><td>ANSWER:</td><td><input type="text" name="examname"/></td> <td><input type="checkbox"/></tr>
 
    
   <tr><td>  <input type="submit" value="SUBMIT"/>

     </td></tr>
     
  
  </table>
 </form>
 </center>
 </body></html>