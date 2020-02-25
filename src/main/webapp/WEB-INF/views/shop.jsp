<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop</title>
</head>
<body>

	<h2>Welcome to the Shop</h2>

	<table>
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Quantity</th>

		</tr>

		<c:forEach var="product" items="${products}" >
			<tr>
				<td>${ product.name }</td>
				<td>${ product.description }</td>
				<td><fmt:formatNumber value="${ product.price }" pattern="0.00" /></td>
				<td><fmt:formatNumber value="${ product.quantity }"
						pattern="0." /></td>
			</tr>


		</c:forEach>
	</table>
	
<!-- 	<form action="/byName"> -->
<!-- 	<p> -->
<!-- 		<input type="text" name="name" pattern="[A-Z,a-z]+" -->
<!-- 					required minlength="2" maxlength="20" /> -->
<!-- 		<input type="submit" value="Submit" /> -->
		
<!-- 	</p> -->
<!-- 	</form> -->

	<p>
		<a class="btn link" href="/"> Home </a>
	</p>

</body>
</html>