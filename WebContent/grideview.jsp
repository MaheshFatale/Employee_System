<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*,com.model.*,com.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="n10.jpg">

<center><img alt="Image not be Loaded...!" src="Logo2.jpeg" height=150
			width=250></center>

<%List<Employee> list=EmpDao.displayAllEmployee(); %>
<center>
<hr color="skyblue">
<table border="">
<tr>
<%
int a = 0;
for(Employee e:list)
{
	
	
	if(a % 4 == 0)
	{
		%><tr><%
	}
	%><td>
	<img alt="Image not be Loaded...!" src="getimage.jsp?eid=<%=e.getEid() %>"  height="350" width="280"></img><br>
	<hr><center><font size="6" color="black"><b><i>
	<%=e.getEname()%>
	</i></b>
	</font>
	</center>
	</td>
	<%
	a++;
	}
%>
</tr>
</table>
<br> <a
							href="http://localhost:8080/Employee_System/NewFile.jsp">
								<font face="Bold" size=6 color="green"><b><i>Back
											page</i></b></font>
							</a>
							<br><br>
							<a href="http://localhost:8080/Employee_System/Startpage.jsp">
				<font face="Bold" size=16 color="red"><i>Log Out</i></font>
			</a>
</center>
</body>
</html>