<%@page import="com.cyh.notice.NoticeDTO"%>
<%@page import="com.cyh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.cyh.notice.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   
    <%@ include file="../index.jsp" %>
    
    <%
    request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
    
	int num =Integer.parseInt(request.getParameter("num"));
    
NoticeDAO noticeDAO = new NoticeDAO();

Connection con = DBConnector.getConnection();

NoticeDTO noticeDTO = noticeDAO.noticeSelect(con, num);


String msg="해당 글이 없습니다"; 


if(noticeDTO == null){
	 //	msg 를 커몬 리절트 에 보내려면 request에 속성을 담아서 보낼수있음.  
    request.setAttribute("msg", msg);
    request.setAttribute("path", "./noticeList.jsp");//요청을 보낼땐 현재위치에서 경로를 지정해야함.
    RequestDispatcher rd = request.getRequestDispatcher("../common/common_result.jsp");
    rd.forward(request, response);               
	
}else{

	request.setAttribute("dto", noticeDTO);
	
	RequestDispatcher view =  request.getRequestDispatcher("./noticeSelectResult.jsp");
	view.forward(request, response);
} 
    
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>NOTICE SELECT PAGE</h1>
</body>
</html>