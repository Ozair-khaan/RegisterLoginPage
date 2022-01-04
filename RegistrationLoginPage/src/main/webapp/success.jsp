<%@page import="com.bean.student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1 style="color: green">Login has Successfully Done !</h1>
	<br>
	<br>
	<br>

	<h4>Your Details are shown below in the table.</h4>

	<table border=1>
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>middle name</th>
			<th>last name</th>
			<th>Mobile no</th>
			<th>Email</th>
			<th>Address</th>
			<th>User Name</th>
			<th>Password</th>
			<th>ReType password</th>
		</tr>

		<%
		student st = (student) session.getAttribute("uname");
		%>
		<tr>
			<td><%=st.getId()%></td>
			<td><%=st.getFirstname()%></td>
			<td><%=st.getMiddlename()%></td>
			<td><%=st.getLastname()%></td>
			<td><%=st.getMobileno()%></td>
			<td><%=st.getEmail()%></td>
			<td><%=st.getAddress()%></td>
			<td><%=st.getUsername()%></td>
			<td><%=st.getPassword()%></td>
			<td><%=st.getRetypepsw()%></td>
			<td><a
				href="UpdateData.jsp"
				onclick="update(<%=st.getId()%>,'<%=st.getFirstname()%>','<%=st.getMiddlename()%>','<%=st.getLastname()%>','<%=st.getMobileno()%>','<%=st.getEmail()%>','<%=st.getAddress()%>','<%=st.getUsername()%>','<%=st.getPassword()%>','<%=st.getRetypepsw()%>')">Update</a></td>
		</tr>


	</table>

	<script type="text/javascript">
function update(id, first_name, middle_name, last_name,mobile_no, email, address, user_name, password, Re_type_password ) {
	console.log(id);
	document.getElementById("id").value=id;
	document.getElementById("firstname").value=first_name;
	document.getElementById("middlename").value=middle_name;
	document.getElementById("lastname").value=last_name;
	document.getElementById("mobile_no").value=mobile_no;
	document.getElementById("email").value=email;
	document.getElementById("address").value=address;
	document.getElementById("username").value=user_name;
	document.getElementById("password").value=password;
	document.getElementById("retypepassword").value=Re_type_password;
	document.getElementById("submit").innerHTML="Update"

	document.getElementById("submit").value="update";
	
}

</script>

	
</body>
</html>