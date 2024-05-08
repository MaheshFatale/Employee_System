<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.dao.*,java.io.*" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
byte[] image = UserDao.getImageById(Integer.parseInt(request.getParameter("uid")));
OutputStream o1 =response.getOutputStream();
response.setContentType("image/jpg");
o1.write(image);
o1.flush();
o1.close();
%>
</body>
</html>