<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body background="n18.jpg" alt="Image not be Loaded...!"
		height=1080 pixel width=1920 pixel>
		
		<br><center><img alt="Image not be Loaded...!" src="Logo2.jpeg" height=170
			width=300></center>
<center>
<h2><b><i><font size=9 color="pink">Employee Management System</font></i></b></h2>
<font color="white" size="8">
<table>
<form action="EmpServlet" method="post">
<tr>
<td align="center"><b>Email:</b></td>
<td><input  type="email" name="uemail" placeholder=" *****@gmail.com" notnull></td>
</tr>
<tr>
<td align="center"><b>Password:</b></td>
<td><input type="password" name="upassword" placeholder=" *****" notnull></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" name="b1" value="SignIn">
</td>
</tr>
</table>
</font>
</center>
<br><br><br>
<input type="reset" name="b1" value="Reset" >
</form> 
<form action="http://localhost:8080/Employee_System/registration.jsp" method="post"><br>
<align="right"><input type="submit" name="b1" value="Create New User Account"></align>
</form>

</body>
</html>
