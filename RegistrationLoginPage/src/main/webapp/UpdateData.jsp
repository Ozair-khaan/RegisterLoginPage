<%@page import="com.bean.student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<form  action="RegistrationController" method="post">
	
		<table align="center" border="1">

			<tr>
				<td>id</td>
				<td><input type="text" name="id" id="id" readonly="readonly"></td>
			</tr>

			<tr>
				<td>FirstName</td>
				<td><input type="text" name="firstname" id="firstname"></td>
			</tr>

			<tr>
				<td>MiddleName</td>
				<td><input type="text" name="middlename" id="middlename"></td>
			</tr>

			<tr>
				<td>LastName</td>
				<td><input type="text" name="lastname" id="lastname"></td>
			</tr>

			<tr>
				<td>Mobile No</td>
				<td><input type="text" name="mobile" id="mobile"></td>
			</tr>

			<tr>
				<td>Email</td>
				<td><input type="text" name="email" id="email"></td>
			</tr>

			<tr>
				<td>Address</td>
				<td><input type="text" name="address" id="address"></td>
			</tr>

			<tr>
				<td>UserName</td>
				<td><input type="text" name="username" id="username"></td>
			</tr>

			<tr>
				<td>Password</td>
				<td><input type="password" name="password" id="password"></td>
			</tr>

			<tr>

				<td>Re type Password</td>
				<td><input type="password" name="retypepassword"
					id="retypepassword"></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" name="submit" id="submit"></td>
			</tr>

		</table>
		
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
				href="#"
				onclick="update(<%=st.getId()%>,'<%=st.getFirstname()%>','<%=st.getMiddlename()%>','<%=st.getLastname()%>','<%=st.getMobileno()%>','<%=st.getEmail()%>','<%=st.getAddress()%>','<%=st.getUsername()%>','<%=st.getPassword()%>','<%=st.getRetypepsw()%>')"><i class="fa fa-edit" style="font-size:48px;color:red"></i></a></td>
		</tr>


	</table>
		
	</form>
	<script type="text/javascript">
function update(id, first_name, middle_name, last_name,mobile_no, email, address, user_name, password, Re_type_password ) {
	console.log(id);
	document.getElementById("id").value=id;
	document.getElementById("firstname").value=first_name;
	document.getElementById("middlename").value=middle_name;
	document.getElementById("lastname").value=last_name;
	document.getElementById("mobile").value=mobile_no;
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