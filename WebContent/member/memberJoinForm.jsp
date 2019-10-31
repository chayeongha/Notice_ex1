<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<h2>Member Join Form</h2>
	<form action="./memerJoinResult.jsp">
    <div class="form-group">
		<label for="id">ID:</label>
		<input type="text" class="form-control" id="id" placeholder="Enter ID" name="id">
    </div>
    <div class="form-group">
		<label for="pw">PW:</label>
		<input type="password" class="form-control" id="pw" placeholder="Enter PW" name="pw">
    </div>
    <div class="form-group">
		<label for="name">NAME:</label>
		<input type="text" class="form-control" id="name" placeholder="Enter NAME" name="name">
    </div>
    <div class="form-group">
		<label for="email">email:</label>
		<input type="email" class="form-control" id="email" placeholder="Enter E-MAIL" name="email">
    </div>
    <div class="form-group">
		<label for="phone">PHONE:</label>
		<input type="text" class="form-control" id="phone" placeholder="Enter PHONE NUMBER" name="phone">
    </div>
    <div class="form-group">
		<label for="grade">GRADE:</label>
		<input type="text" class="form-control" id="grade" placeholder="Enter GRADE" name="grade">
    </div>
	<button type="submit" class="btn btn-default">Submit</button>
	</form>
</div>
	
</body>
</html>