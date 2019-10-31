<%@page import="com.cyh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.cyh.member.MemberDAO"%>
<%@page import="com.cyh.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	MemberDTO memberDTO = new MemberDTO();
	MemberDAO memberDAO = new MemberDAO();
	
	memberDTO.setId(request.getParameter("id"));
	memberDTO.setPw(request.getParameter("pw"));
	memberDTO.setName(request.getParameter("name"));
	memberDTO.setEmail(request.getParameter("email"));
	memberDTO.setPhone(request.getParameter("phone"));
	memberDTO.setGrade(Integer.parseInt(request.getParameter("grade")));
	
	Connection con = DBConnector.getConnection();
	int result = memberDAO.memberJoin(con, memberDTO);
	
	String message = "회원가입 실패";
	
	
	if(result == 1){
		message="회원가입 성공";
	}
	
	if(result>0){
		request.setAttribute("msg", message);
		request.setAttribute("path", "../index.jsp");
		
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
	}else{
		request.setAttribute("msg", message);
		request.setAttribute("path", "../index.jsp");
		
		RequestDispatcher view2 = request.getRequestDispatcher("../common/common_result.jsp");
		view2.forward(request, response);
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