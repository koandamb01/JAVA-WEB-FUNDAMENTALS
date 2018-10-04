<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<title>Button Clicker</title>
</head>
<body>
	<div class="container center">
		<br><br>
		<a href="" class="waves-effect waves-light btn">button</a>
		<br>
		<p>You have clicked this button <c:out value="${ counter }" /> times</p>
	</div>
</body>
</html>