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
	<body bgcolor="pink">
		<img alt="Image not be Loaded...!" src="n3.jpg" height=100
			width=300>
		<%
		Employee e = (Employee) request.getAttribute("e1");
		%>

		<form action="EmpServlet" method="post">
			<br> <br>
			<table border="1">
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Password</th>
				<th>Designation</th>
				<th>Salary</th>
				<tr>
					<td><%=e.getEid()%></td>
					<td><%=e.getEname()%></td>
					<td><%=e.getEemail()%></td>
					<td><%=e.getEpassword()%></td>
					<td><%=e.getEdesignation()%></td>
					<td><%=e.getEsalary()%></td>
			</table>

		</form>
</center>
</body>
</html>