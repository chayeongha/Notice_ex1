<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<%@ include file="../layout/nav.jsp" %>

<div class="container">
	<h2>Member Join Form</h2>
	<form action="./memerJoinResult.jsp">
    <div class="form-group">
		<label for="id">ID:</label>
		<input type="text" class="form-control" id="id" placeholder="Enter ID" name="id" required="required">
    </div>
    <div class="form-group">
		<label for="pw">PW:</label>
		<input type="password" class="form-control" id="pw" placeholder="Enter PW" name="pw" required="required">
    </div>
    <div class="form-group">
		<label for="name">NAME:</label>
		<input type="text" class="form-control" id="name" placeholder="Enter NAME" name="name" required="required">
    </div>
    <div class="form-group">
		<label for="email">email:</label>
		<input type="email" class="form-control" id="email" placeholder="Enter E-MAIL" name="email" required="required">
    </div>
    <div class="form-group">
		<label for="phone">PHONE:</label>
		<input type="tel" class="form-control" id="phone" placeholder="Enter PHONE NUMBER" name="phone" required="required">
    </div>
   
   
	<button type="submit" class="btn btn-default">Submit</button>
	</form>
</div>
	
</body>
</html>