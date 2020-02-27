<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-ABdnjefqVzESm+f9z9hcqx2cvwvDNjfrwfW5Le9138qHCMGlNmWawyn/tt4jR4ba" crossorigin="anonymous">

</head>
<body>
<div class='container'>
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
<a class="btn link" href="/"> Home </a>
</div>
</body>
</html>