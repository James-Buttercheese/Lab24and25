<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-ABdnjefqVzESm+f9z9hcqx2cvwvDNjfrwfW5Le9138qHCMGlNmWawyn/tt4jR4ba" crossorigin="anonymous">
</head>
<body>
<div class='container'>
<form action="/add/confirm" method="post">


		<div>
			<label for="name">Name</label>
		<td><input type="text" id="name" name="name"
			value="name" /></td>
		</div>
		<div>
			<label for="description">Description</label>
		<td><input type="text" id="description" name="description"
			value="description" /></td>
		</div>
		<div>
			<label for="price">price</label>
		<td><input type="number" id="price" name="price"
			value="price" /></td>
		</div>
		<div>
			<label for="quantity">Quantity</label>
			<td><input type="number" id="quantity" name="quantity"
				value="quantity" /></td>
		</div>
	



		<button type="submit" class="btn btn-primary">Submit</button>
		<a class="btn link" href="/adminTable"> Admin Page </a>


		</table>
	</form>
	</div>
</body>
</html>