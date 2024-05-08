<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
//Accept Information
%>
<html>
<head><br><br>
<meta charset="ISO-8859-1">
<title>My Web Page</title>
<br>
</head>
<center>
	<font size=3 color=black><i><b>
				<body background="n13.jpg" alt="Image not be Loaded...!">
					<img alt="Image not be Loaded...!" src="Logo2.jpeg"
						height=175 width=3000>
					
					<form action="EmpServlet" method="post" enctype="multipart/form-data">
					<font size="6" color="black">
						<table border="4">
							<tr>
								<td colspan="2" align="center"><i><b><font
											face="Algerian">Fill Information</font></b></i></td>
							</tr>
							<td align="left"><i><b>Name:</b></i></td>
							<td><input type="text" name="ename"
								placeholder="Abc Def Ghi"  required></td>
							</tr>
							<td align="left"><i><b>Email:</b></i></td>
							<td><input type="email" name="eemail"
								placeholder="Abc@email.com" required></td>
							</tr>
							<td align="left"><i><b>Password:</b></i></td>
							<td><input type="password" name="epassword"
								placeholder="********" required></td>
							</tr>
							<td align="left"><i><b>Designation:</b></i></td>
							<td><select name="edesignation" required>
									<option value="Full Stack Java Dev"><b>Full Stack Java Developer</b></option>
									<option value="Java Dev"><b>Java Developer</b></option>
									<option value="Full Stack UI Dev"><b>Full Stack UI Developer</b></option>
									<option value="UI Dev"><b>UI Developer</b></option>
									<option value="DotNET Dev"><b>DotNET Developer</b></option>
									<option value="Database Dev"><b>Database Developer</b></option>
									<option value="PHP Dev"><b>PHP Developer</b></option>
									<option value="C# Dev"><b>C# Developer</b></option>
									<option value="Python Dev"><b>Python Developer</b></option>
									<option value="Auto-mation Tes"><b>Auto-mation Tester</b></option>	
									<option value="Mannual Tes"><b>Mannual Tester</b></option>
							</select></td>
							</tr>
							<tr>
								<td align="left"><i><b>Salary:</b></i></td>
								<td><input type="number" name="esalary" min="5000" max="999999999"
									placeholder="Rs.***123" required></td>
									<tr><td align="right">Image:</td><td><input type="file" placeholder="select image" name="eimage" required></td></tr>									
							<tr>
								<td colspan="2" align="center"><i><b><font
											face="Algerian">Click on Insert Button</font></b></i></td>
							</tr>
							<tr>
								<br>
								<td colspan="2" align="center"><input type="submit"
									name="b1" value="Insert"> <br></td>
							</tr>
							
						</table>
						</font>
						 </form>
						</center>
						<br>
<a href="http://localhost:8080/Employee_System/NewFile.jsp"><font face="Bold" size=6 color="green"><b><i>Back page</i></b></font></a>
&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="http://localhost:8080/Employee_System/NewFile4.jsp"><font face="Bold" size=6 color="blue"><b><i>Display all</i></b></font></a>
&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="http://localhost:8080/Employee_System/Startpage.jsp"><font face="Bold" size=6 color="red"><i>Log Out</i></font></a>
</body>
</html>