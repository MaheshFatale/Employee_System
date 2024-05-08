<%@ page
	import="java.util.*,com.dao.*,com.database.*,com.model.*,com.controller.*"
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
//Update rechords
%>
<html>
<head>
<br><br>
<meta charset="ISO-8859-1">
<title>My Web Page</title>
<br>
</head>
<center>



	<font size=3 color=black><i><b>
				<body background="n10.jpg" alt="Image not be Loaded...!">
<!-- 					<img alt="Image not be Loaded...!" src="Logo2.jpeg" -->
<!-- 						height=150 width=250> -->
					<br>
								<%
								
		Employee e = (Employee) session.getAttribute("e1");
		%>
					<form action="EmpServlet" method="post">
					
		
					
					<img alt="Image not be Loaded...!" src="getimage.jsp?eid=<%=e.getEid() %>" height="280" width="200"></img>
					
						<table border="4">
							<tr>
								<td colspan="2" align="center"><i><b><font
											face="Algerian">Fill Information</font></b></i></td>
							</tr>
							<td align="left"><i><b>Employee Id:</b></i></td>
							<td><input type="text" name="eid"
								value="<%=e.getEid()%>" readonly></td>
								</tr>
							<td align="left"><i><b>Name:</b></i></td>
							<td><input type="text" name="ename"
								value="<%=e.getEname()%>"></td>
							</tr>
							<td align="left"><i><b>Email:</b></i></td>
							<td><input type="text" name="eemail"
								value="<%=e.getEemail()%>"></td>
							</tr>
							<td align="left"><i><b>Password:</b></i></td>
							<td><input type="password" name="epassword"
								value="<%=e.getEpassword()%>"></td>
							</tr>
							<td align="left"><i><b>Designation:</b></i></td>
							<td><select name="edesignation">
									<option value="<%=e.getEdesignation()%>"><%=e.getEdesignation()%></option>
									<option value="Full Stack Java Developer"><b>Full Stack Java Developer</b></option>
									<option value="Java Developer"><b>Java Developer</b></option>
									<option value="Full Stack UI Developer"><b>Full Stack UI Developer</b></option>
									<option value="UI Developer"><b>UI Developer</b></option>
									<option value="DotNET Developer"><b>DotNET Developer</b></option>
									<option value="Database Developer"><b>Database Developer</b></option>
									<option value="PHP Developer"><b>PHP Developer</b></option>
									<option value="C# Developer"><b>C# Developer</b></option>
									<option value="Python Developer"><b>Python Developer</b></option>
									<option value="Auto-mation Tester"><b>Auto-mation Tester</b></option>	
									<option value="Mannual Tester"><b>Mannual Tester</b></option>
							</select></td>
							</tr>
							<tr>
								<td align="left"><i><b>Salary:</b></i></td>
								<td><input type="text" name="esalary"
									value="<%=e.getEsalary()%>"></td>
							<tr>
								<td colspan="2" align="center"><i><b><font
											face="Algerian">Click on Update Button</font></b></i></td>
							</tr>
							<tr>
								<br>
								<td colspan="2" align="center"><input type="submit"
									name="b1" value="Update"> <br></td>
							</tr>
						</table>
						<br> <a
							href="http://localhost:8080/Employee_System/NewFile.jsp"><center>
								<font face="Bold" size=6 color="blue"><b><i>Back
											page</i></b></font>
							</center></a>
						<td colspan=""><a
							href="http://localhost:8080/Employee_System/NewFile4.jsp"><center>
									<font face="Bold" size=6 color="blue"><b>Display all</b></font>
								</center></a></td>
						</tr>
					</form>
</center>

</i>
</b>
</font>
</body>
</html>