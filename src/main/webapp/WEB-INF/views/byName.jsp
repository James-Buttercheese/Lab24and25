<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-ABdnjefqVzESm+f9z9hcqx2cvwvDNjfrwfW5Le9138qHCMGlNmWawyn/tt4jR4ba" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
</head>
<body>
<div class='container'>

	<table>
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Picture</th>

		</tr>

		<c:forEach var="name" items="${names}">
			<tr>
				<td>${ name.name }</td>
				<td>${ name.description }</td>
				<td><fmt:formatNumber value="${ name.price }" pattern="0.00" /></td>
				<td><fmt:formatNumber value="${ name.quantity }" pattern="0." /></td>
				<td class = "pics"><img src="/images/${name.name}.jpg"/><td> 
			</tr>


		</c:forEach>
	</table>

	<p>
		<p><a class="btn link" href="/shop"> Shop </a></p>
		<a class="btn link" href="/"> Home </a>
	</p>
	</div>
</body>
</html>