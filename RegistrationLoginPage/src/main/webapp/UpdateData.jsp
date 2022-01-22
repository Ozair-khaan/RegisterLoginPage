<%@page import="com.dao.StudentDao"%>
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
<body style="background-color:ghostwhite;">
<h1 align="center">Please Update Your Data </h1>
<%-- <%
int id=Integer.parseInt(request.getParameter("id"));
System.out.println("firstyfgf" +id);
//int idd=Integer.parseInt(id);
System.out.println("second" +id);
StudentDao doa=new StudentDao();
student st= doa.getValues(id);

%> --%>
	<form  action="RegistrationController" method="post">
	
	<%
		student st = (student) session.getAttribute("StudentDetail");
		%>
		<table align="center" border="1">

			<tr>
				<td>id</td>
				<td><input type="text" name="id" id="id" readonly="readonly" value="<%=st.getId() %>" ></td>
			</tr>

			<tr>
				<td>FirstName</td>
				<td><input type="text" name="firstname" id="firstname" value="<%=st.getFirstname() %>"></td>
			</tr>

			<tr>
				<td>MiddleName</td>
				<td><input type="text" name="middlename" id="middlename" value="<%=st.getMiddlename() %>"></td>
			</tr>

			<tr>
				<td>LastName</td>
				<td><input type="text" name="lastname" id="lastname" value="<%=st.getLastname() %>"></td>
			</tr>

			<tr>
				<td>Mobile No</td>
				<td><input type="text" name="mobile" id="mobile" value="<%=st.getMobileno() %>"></td>
			</tr>

			<tr>
				<td>Email</td>
				<td><input type="text" name="email" id="email" value="<%=st.getEmail() %>"></td>
			</tr>

			<tr>
				<td>Address</td>
				<td><input type="text" name="address" id="address" value="<%=st.getAddress() %>"></td>
			</tr>

			<tr>
				<td>UserName</td>
				<td><input type="text" name="username" id="username" value="<%=st.getUsername() %>"></td>
			</tr>

			<tr>
				<td>Password</td>
				<td><input type="password" name="password" id="password" value="<%=st.getPassword() %>"></td>
			</tr>

			<tr>

				<td>Re type Password</td>
				<td><input type="password" name="retypepassword"
					id="retypepassword" value="<%=st.getRetypepsw() %>"></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" name="submit" id="submit" value="update"></td>
			</tr>

		</table>
		
				
		


	
		
	</form>
	<%-- <div class="container">
		<%
		
		String isTrue = (String) session.getAttribute("isTrue");
		System.out.println(isTrue);
		%>
	
		 <% if (isTrue.equals("true")) { %>
         <p style="text-align:center"> Data is Successfully Updated</p>
      <% } else { %>
         <p style="text-align:center"> Data is not Successfully updated</p>
      <% } %>
      </div> --%>
	
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