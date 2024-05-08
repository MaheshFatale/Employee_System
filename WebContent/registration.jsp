<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="n16.jpg" alt="Image not be Loaded...!"
		height=1080 pixel width=1920 pixel>
		<br><br>
		<center><img alt="Image not be Loaded...!" src="Logo2.jpeg" height=120
			width=300></center>
			
	<center>
		<h2><b><font color="pink" size="9">Manager Registration Form</font></b></h2>
		<font color="white" size="6">
		<form action="EmpServlet" method="post" enctype="multipart/form-data">
			<table>
				<tr>
					<td align="right">Name :</td>
					<td><input type="text" name="uname"  required></td>
				</tr>
				<tr>
					<td align="right">Email :</td>
					<td><input type="email" name="uemail" required></td>
				</tr>
				<tr>
					<td align="right">Password :</td>
					<td><input type="password" name="upassword" required></td>
				</tr>
				<tr>
					<td align="right">Gender :</td>
					<td><input type="radio" name="ugender" value="Female">Female
						<input type="radio" name="ugender" value="Male">Male</td>
				</tr>
				<tr>
					<td align="right">Image :</td>
					<td><input type="file" name="uimage" required></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" name="b1"
					value="Create Account"></td>	
				</tr>
			</table>
		</form></font>
	</center>
	<br><br><br>
	<form action="http://localhost:8080/Employee_System/Startpage.jsp" method="post" enctype="multipart/form-data">	
	 <input type="submit" name="b1" value="Back" ><align="right"></align></form>
</body>
</html>

