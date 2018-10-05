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

<title>Roster</title>
</head>
<body>
	<div class="container">	
		<div class="row">
			<div class="col s6">
				<h5>Prototype Roster</h5>
			</div>
			
			<div class="col s6 right-align">
				<h5>				
					<a href="teams" class="waves-effect waves-light btn-small"><i class="material-icons right">add</i>New Team</a>
				</h5>
			</div>
		</div>
		
		<span class="green-text">
          <% if( request.getAttribute("success") != null){ %>
          		<%= request.getAttribute("success") %>
          <% } %>
         </span>
		<table>
	        <thead>
	          <tr class="blue">
	              <th>Team</th>
	              <th>Players</th>
	              <th>Actions</th>
	          </tr>
	        </thead>
	
	        <tbody> 
	          <c:forEach items="${myRoster.getTeams() }" var="team">
	          	<tr>
	            <td> <c:out value="${ team.getTeamName() }"></c:out> </td>
	            <td> <c:out value="${ team.getPlayers().size() }"></c:out> </td>
	            <td>
	            	<a href="/Roster/teams?teamID=<c:out value="${ team.getTeamID() }"></c:out>" class="waves-effect waves-light btn-small orange"><i class="material-icons right">info</i>Details</a>
	            	<a href="/Roster/deleteTeam?id=<c:out value="${ team.getTeamID() }"></c:out>" class="waves-effect waves-light btn-small red"><i class="material-icons right">delete</i>Delete</a>
	            </td>
	          </tr>
	          </c:forEach>
	        </tbody>
      </table>	
	</div>
</body>
</html>