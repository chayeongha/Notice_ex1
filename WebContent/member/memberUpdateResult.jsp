<%@page import="com.cyh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.cyh.member.MemberDAO"%>
<%@page import="com.cyh.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
    
    request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	MemberDTO dto= new MemberDTO();
	MemberDAO memberDAO = new MemberDAO();
	
	dto.setId(request.getParameter("id"));
	dto.setPw(request.getParameter("pw"));
	dto.setName(request.getParameter("name"));
	dto.setEmail(request.getParameter("email"));
	dto.setPhone(request.getParameter("phone"));
	
	//dto를 세션에서가져온  dto 그레이드정보로 바꿔준다.
	MemberDTO sessionDTO=(MemberDTO)session.getAttribute("member");
    
	dto.setGrade(sessionDTO.getGrade());
	
    
    
	// dao에 업데이트를 보내줌.
	Connection con = DBConnector.getConnection();
	
	MemberDTO memberDTO =  new MemberDTO();
	
	int result= memberDAO.memberUpdate(con, dto);
	
	/*DTO를 COMMON RESULT로...  */
	String msg="업데이트 실패";
	
	if(result>0){
		
		msg=" 성공";
		session.setAttribute("member", dto);
		
	}
	
	request.setAttribute("msg", msg);
	request.setAttribute("path", "../index.jsp");
	
	RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
	view.forward(request, response);
	
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