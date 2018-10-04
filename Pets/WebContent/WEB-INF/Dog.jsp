<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Dogs</title>
</head>
<body>
	<div class="container">
	<h1>Welcome Dogs</h1>
		<div class="jumbotron">
		  <h1 class="display-4">Hello, There!</h1>
		  <p> <c:out value="${ Dog.showAffection() }"/> </p>
		  <hr class="my-4">
		  <a class="btn btn-primary btn-lg" href="/Pets" role="button">Go Back</a>
		</div>
	</div>
</body>
</html>