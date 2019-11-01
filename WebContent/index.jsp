<%@page import="com.cyh.member.MemberDTO"%>
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


	<%@ include file="./layout/nav.jsp" %>
	

	
	
	<div class="container">
		<% if(memberDTO != null) {%>
			<h1> After Success Login</h1> 
			<%}else { %>
			<h1> Befor Login </h1>
			<%} %>
	</div>

	<div class="container">
		<%
		Cookie[] cookies	=request.getCookies();
		
		for(int i=0; i<cookies.length; i++){
			
		%>
		<h1>NAME:<%= cookies[i].getName() %></h1>
		<h1>VALUE:<%= cookies[i].getValue() %></h1>
		
		
		<% }%>
			
		<%
				String name="iu";
				out.print("<h1>"+name+"</h1>");
		%>
	
	</div>
	

</body>
</html>