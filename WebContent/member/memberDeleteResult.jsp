<%@page import="com.cyh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.cyh.member.MemberDAO"%>
<%@page import="com.cyh.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    <%
    request.setCharacterEncoding("UTF-8");
   	response.setCharacterEncoding("UTF-8");
   	
   	
   	//session에있는 멤버정보를 가져온다.
   	MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
   	
   	MemberDAO memberDAO = new MemberDAO();
   	
    Connection con = DBConnector. getConnection();
   	int result= memberDAO.memberDelete(con, memberDTO);

   	con.close();
   	
   	//세션에있는 dto정보를 없애준다.
   	session.invalidate();
   	
   	
   	response.sendRedirect("../index.jsp");
    
  
    
    
    
    
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>