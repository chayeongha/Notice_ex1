<%@page import="com.cyh.notice.NoticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cyh.notice.NoticeDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.cyh.util.DBConnector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	NoticeDAO noticeDAO = new  NoticeDAO();
	
	Connection con= DBConnector.getConnection();
    
    ArrayList<NoticeDTO>ar =  noticeDAO.noticeList(con);
    
    
    
    %>
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

<style type="text/css">

.container  h1{
	text-align: center;

}

</style>
</head>
<body>
			<div class="container">
  <h1>NOTICE LIST</h1>
  
  <table class="table">
    	<thead>
      		<tr class="info">
				        <th>Num</th>
				        <th>Title</th>
				        <th>Writer</th>
				        <th>Date</th>
				        <th>Hit</th>
     		 </tr>
   		 </thead>
   		<tbody>
		      <%
		      
		      	for(int i =0; i<ar.size();i++){
		      		
		      		NoticeDTO noticeDTO = ar.get(i);
		      
		    
		      %>
		      <tr class="warning">
		      		<td><%=noticeDTO.getNum() %></td>
		      		<td><a href="./noticeSelect.jsp?num=<%=noticeDTO.getNum()%>"><%=noticeDTO.getTitle() %></a></td>
		      		<td><%=noticeDTO.getWriter() %></td>
		      		<td><%=noticeDTO.getReg_date() %></td>
		      		<td><%=noticeDTO.getHit() %></td>
		      </tr>
		      
		      
		      	<%}%>
			
   		</tbody>
  </table>
  
  	<a href="./noticeWrite.jsp">글쓰기</a>
  
</div>



</body>
</html>