<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css">
</head>
<body>
<table>
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Quantity</th>

		</tr>


			<tr>
				<td>${ product.name }</td>
				<td>${ product.description }</td>
				<td><fmt:formatNumber value="${ product.price }" pattern="0.00" /></td>
				<td><fmt:formatNumber value="${ product.quantity }"
 						pattern="0." /></td> 
 				<td class="pics"><img src="/images/${product.name}.jpg" /> 
				<td>
 			</tr> 



 	</table> 


</body>
</html>