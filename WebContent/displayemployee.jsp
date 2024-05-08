<%@ page
	import="java.util.*,com.dao.*,com.database.*,com.model.*,com.controller.*"
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
//Display single rec Update rechord
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
	<body bgcolor="pink">
		<img alt="Image not be Loaded...!"
		
		 src="n1.jpg" height=100
			width=300>
		<%
		Employee e = (Employee) request.getAttribute("e");
		%>

		<form action="EmpServlet" method="post" >
			<br> <br>
			<table border="1">
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Password</th>
				<th>Designation</th>
				<th>Salary</th>
				<tr>
			
					<td><%=request.getAttribute("eid")%></td>
					<td><%=request.getAttribute("ename")%></td>
					<td><%=request.getAttribute("eemail")%></td>
					<td><%=request.getAttribute("epassword")%></td>
					<td><%=request.getAttribute("edesignatation")%></td>
					<td><%=request.getAttribute("esalary")%></td>
				
				
				
				
			</table>

		</form>
</center>
</body>
</html>