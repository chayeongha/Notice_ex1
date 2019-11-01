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
  <%@
    include file="../layout/nav.jsp"%>

	<% /* memberDTO가 널이면 INDEX 로 이동 */
		if(memberDTO ==null){
			
			session.setAttribute("member", memberDTO);
			response.sendRedirect("../index.jsp");
			
		}
	
	
	%>

    
    <h1>id:<%=memberDTO.getId() %> </h1>
    <h1>name:<%=memberDTO.getName() %> </h1>
    <h1>phone:<%=memberDTO.getPhone()%> </h1>
    <h1>email: <%= memberDTO.getEmail() %></h1>
    <h1>grade: <%= memberDTO.getGrade() %></h1>
    
    <a class="btn btn-primary" href="./memberUpdateForm.jsp">수정</a>
    <a class="btn btn-danger" href="./memberDeleteResult.jsp">탈퇴</a>
    
</body>
</html>