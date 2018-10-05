<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style type="text/css"> <%@ include file="css/style.css" %></style>
<title>Ninjas: New Player</title>
</head>
<body>
	<div class="container">	
		<div class="row">
			<div class="col s6">
				<h5>Add a new player to team Ninjas</h5>
			</div>
			
			<div class="col s6 right-align">
				<h5>				
					<a class="waves-effect waves-light btn-small red"><i class="material-icons left">arrow_back</i>Go Back</a>
				</h5>
			</div>
		</div>
		<div class="row">
			<div class="col s6">
				<form action="" method="POST">
					<div class="input-field">
			          <input id="last_name" type="text" name="firstName" value="<c:out value="${firstName}"></c:out>" placeholder="Type First Name">
			          <span class="red-text">
				          <% if( request.getAttribute("firstNameErr") != null){ %>
				          		<%= request.getAttribute("firstNameErr") %>
				          <% } %>
			          </span>
		        	</div>
		        	
		        	<div class="input-field">
			          <input id="last_name" type="text" name="lastName" value="<c:out value="${lastName}"></c:out>" placeholder="Type Last Name">
			          <span class="red-text">
				          <% if( request.getAttribute("lastNameErr") != null){ %>
				          		<%= request.getAttribute("lastNameErr") %>
				          <% } %>
			          </span>
		        	</div>
		        	
		        	<div class="input-field">
			          <input id="last_name" type="text" name="age" value="<c:out value="${age}"></c:out>" placeholder="Type Age">
			          <span class="red-text">
				          <% if( request.getAttribute("ageErr") != null){ %>
				          		<%= request.getAttribute("ageErr") %>
				          <% } %>
			          </span>
			          <button type="submit" class="btn-floating waves-effect waves-light btn-small right"><i class="material-icons">add</i></button>
		        	</div>
				</form>
			</div>
		</div>
		
	</div>
</body>
</html>