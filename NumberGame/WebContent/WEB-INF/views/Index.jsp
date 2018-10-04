<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style type="text/css"> <%@ include file="css/style.css" %> </style>
<title>Great Number Game</title>
</head>
<body>
	<div class="container">
        <h2>***** Welcome to the Great Number Game *****</h2>
        <p>I am thinking of a number between 1 and 100</p>
        <p>Take a guess!</p>
        <h3>
        	<%= session.getAttribute("counter") %>
        </h3>
        
       	<% if(session.getAttribute("answer") != null){ %>
    		 <!-- when the user answer at least once -->
    		<% if(session.getAttribute("answer").equals("wrong")) { %>
    			<div class="wrong">
    				<h1><%= session.getAttribute("hint") %></h1>
    			</div>
    			
    			<form action="" method="POST">
                    <input type="text" name="userNumber" required>
                    <button class="btn btn-primary" type="submit">Submit</button>
                </form>
    		
    		<% } else { %>
    		<!-- when the user answer at least once -->
    			<div class="right">
    				<h3><%= session.getAttribute("guessNumber") %></h3>
    				<a href="reset">
                        <button class="btn btn-primary">Play again!</button>
                    </a>
    			</div>
    		<% } %>
    	
    	<% } else { %>
    		<!-- When the user first load the page -->
    		<form action="" method="POST">
                <input type="text" name="userNumber" required>
                <button class="btn btn-primary" type="submit">Submit</button>
            </form>
       <% } %>
    </div>
</body>
</html>