<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop</title>
<link rel="stylesheet" href="/style.css" />
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-ABdnjefqVzESm+f9z9hcqx2cvwvDNjfrwfW5Le9138qHCMGlNmWawyn/tt4jR4ba" crossorigin="anonymous">
</head>
<body>
<div class='container'>
	<h2>Welcome to the Shop</h2>
<form>
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
				<td><fmt:formatNumber value="${ product.price }" pattern="0.00" /></td>
				<td><fmt:formatNumber value="${ product.quantity }"
						pattern="0." /></td>
				<td class="pics"><img src="/images/${product.name}.jpg" />
				<td>
				<td><a href="/shop/favorite?id=${ product.id }"	class="btn btn-light btn-sm">Cart</a></td>
			</tr>


		</c:forEach>
	</table>
	</form>

	<form action="/byName">
		<p>
			<input type="text" name="name" pattern="[A-Z,a-z]+" required
				minlength="2" maxlength="20" /> <input type="submit" value="Submit" />

		</p>
	</form>

	<p>
	<a class="btn btn-light btn-sm" href="/favorites">Shopping List </a>
		<a class="btn btn-light btn-sm" href="/"> Home </a>
	</p>
</div>
</body>
</html>