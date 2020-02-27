<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main</title>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/sandstone/bootstrap.min.css" rel="stylesheet" integrity="sha384-ABdnjefqVzESm+f9z9hcqx2cvwvDNjfrwfW5Le9138qHCMGlNmWawyn/tt4jR4ba" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
<link href="https://emoji-css.afeld.me/emoji.css" rel="stylesheet">
</head>
<body>
<div class='container'>

	
	<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" >
    <i class="em em-coffee" aria-role="presentation" aria-label="HOT BEVERAGE"></i>
   Welcome to the Java hut!
  </a>
</nav>
	
	<form>
	<div>
	<p class="homeR">What would you like to do today?</p>
	
	<p><a  class="homeB" class="btn link" href="/register"> Register </a></p>
	<p><a  class="homeB" class="btn link" href="/admin">Admin Log In</a></p>
	<p><a  class="homeB" class="btn link" href="/shop"> Shop </a></p>
			
	
	</div>
	</form>
	


</div>
</body>
</html>