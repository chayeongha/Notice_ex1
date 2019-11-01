<%@page import="sun.swing.SwingUtilities2.Section"%>
<%@page import="com.cyh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.tomcat.jni.Mmap"%>
<%@page import="com.cyh.member.MemberDAO"%>
<%@page import="com.cyh.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
   
   
   		request.setCharacterEncoding("UTF-8");
   		response.setCharacterEncoding("UTF-8");
   		
   		MemberDTO memberDTO = new MemberDTO();
   		
   		memberDTO.setId( request.getParameter("id"));
   		memberDTO.setPw(request.getParameter("pw"));
   		////
   		
   	String check	= request.getParameter("remember");
   		if(check != null){
   		
   		Cookie cookie= new Cookie("id",memberDTO.getId());
   		
   		cookie.setPath(request.getContextPath());
   		
   		cookie.setMaxAge(3600);
   		
   		response.addCookie(cookie);
   		
   		}else{
   			
   			Cookie cookie = new Cookie("id" ,"" );
   			
   			cookie.setPath(request.getContextPath());
   	   		
   	   		cookie.setMaxAge(0);
   	   		
   	   		response.addCookie(cookie);
   			
   			
   		}
   		
   		
   		MemberDAO memberDAO =new MemberDAO();
   		
   		Connection con = DBConnector.getConnection();
   		
   	    memberDTO	=memberDAO.memberLogin(con, memberDTO);
   
   	    con.close();
   	    
   	  	if(memberDTO != null){
   	  		
   	  		session.setAttribute("member", memberDTO);
   	  		response.sendRedirect("../index.jsp");
   	  		
   	  	}else{
   	  		
   	  		request.setAttribute("msg", "Login Fail");
   	  		request.setAttribute("path", "../index.jsp");
   	  		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
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

</body>
</html>