<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>notYet</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-ABdnjefqVzESm+f9z9hcqx2cvwvDNjfrwfW5Le9138qHCMGlNmWawyn/tt4jR4ba" crossorigin="anonymous">

</head>
<body>
<div class='container'>
	<h3>Please Log In</h3>



	<table>

		<form action="/adminTable">
		<tr>
			<th scope="row">Login:</th>
			<td><input type="text" name="fName" pattern="James"
				oninvalid="this.setCustomValidity('Try James')"
				oninput="this.setCustomValidity('')" /></td>
		</tr>
		<tr>
			<th scope="row">Password:</th>
			<td><input type="password" name="pWord" pattern="McDowell"
				oninvalid="this.setCustomValidity('Try McDowell')"
				oninput="this.setCustomValidity('')" /></td>
		</tr>
	</table>

	<input type="submit" value="Submit" />

	</form>
	<a class="btn link" href="/"> Home </a>
	</div>
</body>
</html>