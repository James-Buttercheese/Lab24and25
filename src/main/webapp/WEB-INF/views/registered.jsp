<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-ABdnjefqVzESm+f9z9hcqx2cvwvDNjfrwfW5Le9138qHCMGlNmWawyn/tt4jR4ba" crossorigin="anonymous">

</head>
<body>
<div class='container'>

<h2>Congrats you're registered. </h2>

<table>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Phone Number</th>
			<th>Password</th>

		</tr>
			<tr>
				<td>${ user.fName }</td>
				<td>${ user.lName }</td>
				<td>${ user.pNumber }</td>
				<td>${ user.email }</td>
				<td>${ user.pWord }</td>
				
			</tr>
	</table>


<p><a class="btn link" href="/"> Home </a></p>

</div>
</body>
</html>