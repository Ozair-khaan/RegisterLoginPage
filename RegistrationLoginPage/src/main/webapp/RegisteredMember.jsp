<%@page import="com.bean.student"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="1" align="center">
<tr>
<th>ID</th>
<th>FirstName</th>
<th>LastName</th>
</tr>
<%
StudentDao dao=new StudentDao();
List<student>st=dao.getStudent();
for(student s:st)
{
%>
<tr>
<td><%=s.getId() %></td>
<td><%=s.getFirstname() %></td>
<td><%=s.getLastname() %></td>

</tr>
<%} %>
</table>
</body>
</html>