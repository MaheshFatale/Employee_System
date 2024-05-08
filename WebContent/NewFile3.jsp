<%@ page
	import="java.util.*,com.dao.*,com.database.*,com.model.*,com.controller.*"
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
//Display single rec Update rechord
%>
<html>
<head><br><br>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
	<body background="n8.jpg" alt="Image not be Loaded...!">
		<img alt="Image not be Loaded...!" src="Logo2.jpeg" height=150
			width=250>
		<%
		Employee e = (Employee) request.getAttribute("e1");
		%>

		<form action="EmpServlet" method="post">
			<br> <br>
			<font size="6" color="skyblue">
			<table border="1" bgcolor="black">
				<th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<center>Id</center> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
				<th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<center>Name</center> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
				<th><i>Image</i></th>
				<th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<center>Email</center> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </th>
				<th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <center>Password </center> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
				<th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <center>Designation </center> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
				<th>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <center>Salary </center> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
				<tr>
					<td>&nbsp&nbsp&nbsp&nbsp<%=e.getEid()%>&nbsp&nbsp&nbsp&nbsp</td>
					<td>&nbsp&nbsp&nbsp&nbsp<%=e.getEname()%>&nbsp&nbsp&nbsp&nbsp</td>
					<td><img src="getimage.jsp?eid=<%=e.getEid() %>" height="100" width="100"></img></td>
					<td>&nbsp&nbsp&nbsp&nbsp<%=e.getEemail()%>&nbsp&nbsp&nbsp&nbsp</td>
					<td>&nbsp&nbsp&nbsp&nbsp<%=e.getEpassword()%>&nbsp&nbsp&nbsp&nbsp</td>
					<td>&nbsp&nbsp&nbsp&nbsp<%=e.getEdesignation()%>&nbsp&nbsp&nbsp&nbsp</td>
					<td>&nbsp&nbsp&nbsp&nbsp<%=e.getEsalary()%>&nbsp&nbsp&nbsp&nbsp</td>
			</table>
					</font>
		</form><br>
		<a href="http://localhost:8080/Employee_System/NewFile.jsp">
				<font face="Bold" size=16 color="blue"><i>Home page</i></font>
			</a>
			&nbsp&nbsp&nbsp&nbsp&nbsp
			<a href="http://localhost:8080/Employee_System/Startpage.jsp">
				<font face="Bold" size=16 color="red"><i>Log Out</i></font>
			</a>
</center>
</body>
</html>