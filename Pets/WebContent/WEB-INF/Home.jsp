<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<title>Pet Galaxy</title>
</head>
<body>
	<div class="container mt-20">
		<br><br><br>
		<div class="row">
			<div class="col-md-6">
				<h5>Get a Cat</h5>
				<form action="animals/cat" method="POST">
				  <div class="form-group">
				    <input type="text" class="form-control" name="name" placeholder="Enter Cat Name">
				  </div>
				  <div class="form-group">
				    <input type="text" class="form-control" name="breed" placeholder="Enter Bread">
				  </div>
				   <div class="form-group">
				    <input type="text" class="form-control" name="weight" placeholder="Enter Weight (lb)">
				  </div>
				  <button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
			
			<div class="col-md-6">
				<h5>Get a Dog</h5>
				<form action="animals/dog" method="POST">
				  <div class="form-group">
				    <input type="text" class="form-control" name="name" placeholder="Enter Dog Name">
				  </div>
				  <div class="form-group">
				    <input type="text" class="form-control" name="breed" placeholder="Enter Bread">
				  </div>
				   <div class="form-group">
				    <input type="text" class="form-control" name="weight" placeholder="Enter Weight (lb)">
				  </div>
				  <button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
		
	</div>
</body>
</html>