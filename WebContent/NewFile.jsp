<%@ page
	import="java.util.*,com.dao.*,com.database.*,com.model.*,com.controller.*"
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
//Head page
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Web Page</title>
</head>

	<br><br><br>
	<body background="n7.jpg" alt="Image not be Loaded...!"
		height=1080 pixel width=1920 pixel>
		<center><img alt="Image not be Loaded...!" src="Logo1.jpg" height=100
			width=300></center>
		<br>
		<br>
		<font size=7 color="black"><b><i>
					<center>
					<table border="1" bgcolor="sky-blue">
						<th><i>Id</i></th>
						<th><i>Name</i></th>
						<th><i>Designation</i></th>
						<th colspan="3"><i>Action</i></th>
						<%
						double total = 0;
						int count = 0;
						List<Employee> list = EmpDao.displayAllEmployee();
						for (Employee e : list) {
						%><tr>
							<td><%=e.getEid()%></td>
							<td><%=e.getEname()%></td>
							<td><%=e.getEdesignation()%></td>
							<%
							total += count++;
							%>
							<td><a href="EmpServlet?b1=Search&eid=<%=e.getEid()%>"><font
									face="Bold" color="blue">Display</font></a></td>
							<td><a href="EmpServlet?b1=UpdateEmp&eid=<%=e.getEid()%>"><font
									face="Bold" color="green">Update Info</font></a></td>
							<td><a href="EmpServlet?b1=Delete&eid=<%=e.getEid()%>"><font
									face="Bold" color="red">Delete Rec</font></a></td>

						</tr>
						<%
						}
						%><tr>
							<td align="center" colspan="2"><b>Total Number of
									Employee : </td>
							</b>
							<td><b><center> <%=count%></center></b></td>

							<td colspan="2"><a
								href="http://localhost:8080/Employee_System/NewFile2.jsp"><center>
										<font face="Bold" color="green">Insert New</font>
									</center></a></td>
							<td colspan=""><a
								href="http://localhost:8080/Employee_System/NewFile4.jsp"><center>
										<font face="Bold" color="blue">Display all</font>
									</center></a></td>
						</tr>
					</table></center>
					<br>&nbsp
					
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	
					</form>
<a href="http://localhost:8080/Employee_System/grideview.jsp"><font color="blue" >Display here for Grid view</font></a>
&nbsp&nbsp
<a href="http://localhost:8080/Employee_System/NewFile0.jsp"><i><font face="Bold" size=8 color="yellow">About page</font></i></a>
&nbsp&nbsp
</a></center><a href="http://localhost:8080/Employee_System/Startpage.jsp"><font face="Bold" size=16 color="red"><i>Log Out</i></font></a>
</body>
</html>