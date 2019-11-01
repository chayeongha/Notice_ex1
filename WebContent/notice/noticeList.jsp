<%@page import="com.cyh.member.MemberDTO"%>
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
    
	MemberDTO  memberDTO=(MemberDTO) session.getAttribute("member");
	
    con.close();
    
    
    //쿠키 발행예제
    //default생성자가없다 빈생성자가없음.
    //쿠키 생성시 생성자에  키와 밸류 입력
    
    Cookie cookie = new Cookie("name","iu");
    
    //쿠키가 적용 되는 path설정 : 보통 context path.적용
   cookie.setPath(request.getContextPath());
    
    //쿠키의 유효시간해줘야함.
    //설정을 하지 않았을 시 웹브라우저가 종료되면 같이 종료됨.
    //단위 초단위로 설정.60초 *60= 한시간  한시간유효시간 성정
    cookie.setMaxAge(60*60);
    
    //쿠키를 클라이언트로 전송 보낼떄는 쿠키를 리스폰스에 담아서 보냄
    response.addCookie(cookie);
    
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
  <%if(memberDTO != null && memberDTO.getGrade()==0){ %>
  	<a href="./noticeWrite.jsp" >글쓰기</a>
  
  
  <%} %>
</div>



</body>
</html>