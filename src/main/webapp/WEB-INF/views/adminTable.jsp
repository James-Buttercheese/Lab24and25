<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Table</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-ABdnjefqVzESm+f9z9hcqx2cvwvDNjfrwfW5Le9138qHCMGlNmWawyn/tt4jR4ba" crossorigin="anonymous">



</head>
<body>
<div class='container'>
	<form method=post>
		<table>
			<tr>
				<th>Name</th>
				<th>Description</th>
				<th>Price</th>
				<th>Quantity</th>

			</tr>

			<c:forEach var="product" items="${products}">
				<tr>
					<td>${ product.name }</td>
					<td>${ product.description }</td>
					<td><fmt:formatNumber value="${ product.price }"
							pattern="0.00" /></td>
					<td><fmt:formatNumber value="${ product.quantity }"
							pattern="0." /></td>
					<td><a href="/edit?id=${ product.id }"
						class="btn btn-light btn-sm">Edit</a></td>
					<td><a onclick="return confirm('Are you sure?')" href="/adminTable/delete?id=${ product.id }"
							class="btn btn-light btn-sm">Delete</a></td>
				</tr>


			</c:forEach>


		</table>


	</form>



	<a href="/add" class="btn btn-light btn-sm">Add New</a>
	<a class="btn link" href="/"> Home </a>
	
	</div>
</body>
</html>