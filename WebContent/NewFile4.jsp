<%@ page
	import="java.util.*,com.dao.*,com.database.*,com.model.*,com.controller.*"
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
//Display all rechord page
%>
<html>
<head><br><br>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<center>
	<br>
	<body background="n15.jpg" alt="Image not be Loaded...!">
		<img alt="Image not be Loaded...!" src="Logo2.jpeg" height=150
			width=250>
	
		<br>
		<br>
		<b><font size=6 color="white"><i>
					
<table border="1" >
<thead bgcolor="skyblue">
<th><i>Id</i></th>
<th><i>Image</i></th>
<th><i>Name</i></th>
<th><i>Email</i></th>
<th><i>Password</i></th>
<th><i>Designation</i></th>
<th><i>Salary</i></th>

<th colspan="3"><i>Action</i></th>
</thead>
<%
double total =0;
int count=0;
List<Employee> list=EmpDao.displayAllEmployee();
for(Employee e:list)
	{
	%><tbody>
	<tr>
	<td><%=e.getEid() %></td>
	<td><img alt="Image not be Loaded...!" src="getimage.jsp?eid=<%=e.getEid() %>" height="230" width="180"></img></td>
	<td><%=e.getEname() %></td>
	<td><%=e.getEemail() %></td>
	<td><%=e.getEpassword() %></td>
	<td><%=e.getEdesignation() %></td>
	<td><%=e.getEsalary() %></td>
	<% total+=e.getEsalary();
	count++;%>
	<td><a href="EmpServlet?b1=Search&eid=<%=e.getEid()%>"><font
									face="Bold" color="blue">Display</font></a></td>
	<td><a href="EmpServlet?b1=UpdateEmp&eid=<%=e.getEid()%>"><font
									face="Bold" color="green">Update Info</font></a></td>
	<td><a href="EmpServlet?b1=Delete&eid=<%=e.getEid()%>"><font
									face="Bold" color="red"><b>Delete</b></font></a></td>
	
	</tr>
	<% }%><tr bgcolor="skyblue"><td align="center" colspan="6"><b>Total  Salary  of  <%=count%>  Employee   </td></b> <td><b><%=total %></b></td><td></td>
	<td colspan="3"><a
								href="http://localhost:8080/Employee_System/NewFile2.jsp"><center>
										<font face="Bold" color="green">Insert New Record</font>
									</center></a></td>
	</tr>
	</tbody>
</table>	</center>
			</i></font></b>
		<a href="http://localhost:8080/Employee_System/NewFile.jsp"><font face="Bold" size=16 color="green"><i>Home page</i></font></a>
		&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="http://localhost:8080/Employee_System/NewFile0.jsp"><font face="Bold" size=16 color="orange"><i>Main page</i></font></a>
		&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="http://localhost:8080/Employee_System/Startpage.jsp"><font face="Bold" size=16 color="red"><i>Log Out</i></font></a>
</body>
</html>