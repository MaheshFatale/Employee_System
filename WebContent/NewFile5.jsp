<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
//Update
%>
<html>
<head><br><br>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="EmpServlet" method="post">
		<table>
			<tr>
				<td align="right"><i>ID:</i></td>
				<td><input type="text" name="eid" placeholder="id"></td>
			</tr>
			<td align="right"><i>Name:</i></td>
			<td><input type="text" name="ename" placeholder="name"></td>
			</tr>
			<td align="right"><i>Email:</i></td>
			<td><input type="text" name="eemail"
				placeholder="user@email.com"></td>
			</tr>
			<td align="right"><i>Password:</i></td>
			<td><input type="password" name="epassword"
				placeholder="password"></td>
			</tr>
			<td align="right"><i>Designation:</i></td>
			<td><select name="edesignation">
					<option value="Chief Executive Officer"><b>Chief
							Executive Officer</b></option>
					<option value="Chief Operating Officer"><b>Chief
							Operating Officer</b></option>
					<option value="Chief Financial Officer"><b>Chief
							Financial Officer</b></option>
					<option value="Chief Information Officer"><b>Chief
							Information Officer</b></option>
					<option value="Chief Technology Officer"><b>Chief
							Technology Officer</b></option>
			</select></td>
			</tr>
			<tr>
				<td align="right"><i>Salary:</i></td>
				<td><input type="text" name="esalary" placeholder="salary"></td>
			<tr>
				<td colspan="2" align="center"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" name="b1"
					value="Insert"> <input type="submit" name="b1"
					value="Delete"> <input type="submit" name="b1"
					value="Update"> <input type="submit" name="b1"
					value="Search"></td>
			</tr>
		</table>
	</form>
	</center>
</body>
</html>