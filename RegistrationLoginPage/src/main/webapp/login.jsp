<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:bisque">
	<form name="loginCntrl" action=loginCntrl method="post">
		<table align="center">
			<h1 align="center" style="color: darkblue">Login Form</h1>
			<marquee width="100%" direction="left" height="100px">
			<h3 align="center" style="color: green">If you didn't register it yet, Please click on Register Button.</h3>
			</marquee>
			<h3 align="center">Please login here !!!</h3>
			
			<tr>
				<td>Username:</td>
				<td><input type="text" size="20" name="username"
					Placeholder="Please enter Username" required="required">
			<tr>
				<td>Password:</td>
				<td><input type="password" size="20" name="password"
					Placeholder="Please enter password" required="required">
			<tr>
				<td>
					<button class="btn btn-lg btn-primary" id="submit"
						onclick="location.href ='index.html'">Registration</button>
				</td>

				<td><input type="submit" name="login"></td>
		</table>
	</form>
</body>
</html>