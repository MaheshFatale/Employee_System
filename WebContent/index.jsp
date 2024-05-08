<%@page import="com.model.*,com.dao.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.*" %>

<html>
<body>
<%
User u2 = (User) session.getAttribute("u");
%>
<img align="right" alt="Image not be Loaded...!" src="getimageuser.jsp?uid=<%=u2.getUid()%>" height="200" width="160"></img>

<center>
<h2><font face="goudy stout" size=20 color="blue">Hello, Welcome to<br> Employee<br> Management <br>System ...!</font></h2>
<br>
<br>
<font face="Algerian" align="center" size="10" color="blue">Mr.&nbsp<%=u2.getUname() %>&nbsp Sir</font><br>
<br><br>
<a href="http://localhost:8080/Employee_System/NewFile.jsp">
<font face="Bold" size=10 color="blue">Start Project</font>
</a>
</center>
</body>
</html>
