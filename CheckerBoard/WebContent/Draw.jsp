<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checker Board</title>
<style>
	* {
       margin: 0;
       padding: 0;
   }
   
   h1, h2{
       text-align: center;
       margin: 10px;
   }
   
   table {
       margin: auto;
       background: rgb(184, 183, 183);
       border: 1px solid black;
   }
   
   table tr td {
       width: 50px;
       height: 50px;
       background-color: red;
   }
   
   tr.odd td:nth-child(odd) {
       background-color: black;
   }
   
   tr.even td:nth-child(even) {
       background-color: black;
   }
   
</style>

</head>
<body>
	<!-- Getting the parameters from the URL -->
	<!-- witdth = col; and height = row-->
	
	<% int row = Integer.parseInt(request.getParameter("height")); %>
	
	<% int col = Integer.parseInt(request.getParameter("width")); %>
	

	<h1>CheckerBoard: 10w X 5h</h1>
	<table>
		<% for(int r = 1; r <= row; r++){ %>
			<% if(r % 2 != 0){ %>
				<tr class="odd">
			<% } else { %>
				<tr class="even">	
			<% } %>
			
			<% for(int c = 1; r <= col; c++){ %>
				<td></td>
			<% } %>
			</tr>
		<% } %>
	</table>
</body>
</html>