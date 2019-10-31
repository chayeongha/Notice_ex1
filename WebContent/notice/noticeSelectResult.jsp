<%@page import="com.cyh.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
    	NoticeDTO noticeDTO	=(NoticeDTO)request.getAttribute("dto");
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<title>Insert title here</title>





</head>
<body>
			
<h1>notice select page</h1>
<div class="container">
<table class="table">
<thead>
<tr><th>NUM</th><th>TITLE</th><th>WRITER</th><th>CONTENTS</th><th>DATE</th><th>HIT</th></tr>
</thead>
<tbody>
<tr>
<td><%= noticeDTO.getNum()%></td>
<td><%= noticeDTO.getTitle() %></td>
<td><%= noticeDTO.getWriter() %></td>
<td><%= noticeDTO.getContents() %></td>
<td><%= noticeDTO.getReg_date() %></td>
<td><%= noticeDTO.getHit() %></td>

</tr>
</tbody>
</table>
</div>


<div class="button">
<a class="btn btn-danger" href="">Update</a>
<a href="" class="btn btn-primary">Delete</a>

</div>




</body>
</html>