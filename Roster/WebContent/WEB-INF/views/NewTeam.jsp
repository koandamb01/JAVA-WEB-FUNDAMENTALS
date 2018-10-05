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
<title>New Team</title>
</head>
<body>
	<div class="container">	
		<div class="row">
			<div class="col s6">
				<h3>Create a new Team</h3>
			</div>
			
			<div class="col s6 right-align">
				<h3>				
					<a href="/Roster/Home" class="waves-effect waves-light btn-small red"><i class="material-icons left">arrow_back</i>Go Back</a>
				</h3>
			</div>
		</div>
		
		<form action="teams" method="POST">
			<div class="input-field col s6">
	          <input type="text" name="teamName" placeholder="Type Team Name">
	          <span class="red-text">
		          <% if(request.getAttribute("teamNameErr") != null){ %>
		          		<%= request.getAttribute("teamNameErr") %>
		          <% } %>
	          </span>
	          <button type="submit" class="btn-floating waves-effect waves-light btn-small right"><i class="material-icons">add</i></button>
        	</div>
		</form>
	</div>
</body>
</html>