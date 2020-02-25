<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<h1>Please Fill Out This Form To Register</h1>
	<form action="/registered">

		<table>


			<tr>
				<th scope="row">First Name:</th>
				<td><input type="text" name="fName" pattern="[A-Z][a-z]+"
					required minlength="2" maxlength="10" /></td>
			</tr>
			<tr>
				<th scope="row">Last Name:</th>
				<td><input type="text" name="lName" pattern="[A-Z][A-Z,a-z]+"
					required minlength="2" maxlength="20" /></td>
			</tr>
			<tr>
				<th scope="row">Phone Number:</th>
				<td><input type="number" name="pNumber" required minlength=2
					required maxlength=10 /></td>
			</tr>
			<tr>
				<th scope="row">Email:</th>
				<td><input type="email" name="email" /></td>
			</tr>
			<tr>
				<th scope="row">Password:</th>
				<td><input type="password" name="pWord" /></td>
			</tr>

		</table>

		<input type="submit" value="Submit" />
	</form>


</body>
</html>