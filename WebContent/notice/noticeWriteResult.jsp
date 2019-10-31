<%@page import="com.cyh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.cyh.notice.NoticeDAO"%>
<%@page import="com.cyh.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
    
    NoticeDTO noticeDTO =  new NoticeDTO();
    
    noticeDTO.setWriter(request.getParameter("writer"));
    noticeDTO.setTitle(request.getParameter("title"));
    noticeDTO.setContents(request.getParameter("contents"));
    
    /* System.out.println(noticeDTO.getWriter()); */
    
    //DAO객체
    
    NoticeDAO noticeDAO = new NoticeDAO();
    
    Connection con =  DBConnector.getConnection();
    
    int result = noticeDAO.noticeWrite(con, noticeDTO);
    
    con.close();
    
    String msg="등록실패";
    
    if(result >0){
    	
    	msg="등록성공";
    	
    	request.setAttribute("msg", msg);
        request.setAttribute("path", "./noticeList.jsp");//요청을 보낼땐 현재위치에서 경로를 지정해야함.
        RequestDispatcher rd = request.getRequestDispatcher("../common/common_result.jsp");
        rd.forward(request, response);               
    	
    }else{
    	request.setAttribute("msg", msg);
        request.setAttribute("path", "./noticeList.jsp");//요청을 보낼땐 현재위치에서 경로를 지정해야함.
        RequestDispatcher rd = request.getRequestDispatcher("../common/common_result.jsp");
        rd.forward(request, response);     
    	
    }
    
    
    
	
	
    
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="../common/common_result.jsp?msg=<%=msg %>">result</a>
</body>
</html>