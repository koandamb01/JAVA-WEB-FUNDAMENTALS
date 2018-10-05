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
<title>Team</title>
</head>
<body>
	<div class="container">	
		<div class="row">
			<div class="col s7">
				<h5>Team Name</h5>
			</div>
			
			<div class="col s5">
				<h5>				
					<a href="/Roster/players?id=<c:out value="${ teamID }"></c:out>" class="waves-effect waves-light btn-small"><i class="material-icons right">add</i>New Player</a>
				</h5>
			</div>
		</div>
		
		
		<table>
	        <thead>
	          <tr class="blue">
	              <th>FirstName</th>
	              <th>LastName</th>
	              <th>Age</th>
	              <th>Actions</th>
	          </tr>
	        </thead>
	
	        <tbody>
	      		<c:forEach items="${myRoster.findTeamById(teamID).getPlayers()}" var="player">
	          	<tr>
	            <td> <c:out value="${ player.getFirstName() }"></c:out> </td>
	            <td> <c:out value="${ player.getLastName() }"></c:out> </td>
	            <td> <c:out value="${ player.getAge() }"></c:out> </td>
	            <td>
	            	<a href="/Roster/deletePlayer?teamID=<c:out value="${ teamID }"></c:out>&playerID=<c:out value="${ player.getPlayerID() }"></c:out>" class="waves-effect waves-light btn-small red"><i class="material-icons right">delete</i>Delete</a>
	            </td>
	          </tr>
	          </c:forEach>
	        </tbody>
      </table>
      	<br>
		<a href="/Roster/Home" class="waves-effect waves-light btn-small blue"><i class="material-icons left">arrow_back</i>Go Back</a>
	</div>
</body>
</html>