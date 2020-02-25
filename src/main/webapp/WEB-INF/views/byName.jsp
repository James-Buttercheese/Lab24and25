<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Quantity</th>

		</tr>

		<c:forEach var="name" items="${names}">
			<tr>
				<td>${ names.name }</td>
				<td>${ names.description }</td>
				<td><fmt:formatNumber value="${ names.price }" pattern="0.00" /></td>
				<td><fmt:formatNumber value="${ names.quantity }" pattern="0." /></td>
			</tr>


		</c:forEach>
	</table>

	<p>
		<a class="btn link" href="/"> Home </a>
	</p>
</body>
</html>