<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="../layout/nav.jsp" %>

<div class="container">
	<h2>Member Update Form</h2>
	<form action="./memberUpdateResult.jsp">
    <div class="form-group">
		<label for="id">ID:</label>
		<input type="text" class="form-control" id="id" placeholder="Enter ID" name="id" required="required" value="<%= memberDTO.getId()%>" readonly="readonly">
    </div>
    <div class="form-group">
		<label for="pw">PW:</label>
		<input type="password" class="form-control" id="pw" placeholder="Enter PW" name="pw" required="required" value="<%= memberDTO.getPw()%>">
    </div>
    <div class="form-group">
		<label for="name">NAME:</label>
		<input type="text" class="form-control" id="name" placeholder="Enter NAME" name="name" required="required" value="<%= memberDTO.getName()%>">
    </div>
    <div class="form-group">
		<label for="email">email:</label>
		<input type="email" class="form-control" id="email" placeholder="Enter E-MAIL" name="email" required="required" value="<%= memberDTO.getEmail()%>">
    </div>
    <div class="form-group">
		<label for="phone">PHONE:</label>
		<input type="tel" class="form-control" id="phone" placeholder="Enter PHONE NUMBER" name="phone" required="required" value="<%= memberDTO.getPhone()%>">
    </div>
   
   
	<button type="submit" class="btn btn-default">Submit</button>
	</form>
</div>
</body>
</html>