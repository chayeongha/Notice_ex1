
<%@page import="com.cyh.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="../index.jsp" %>
    	
    	<%
    		if(memberDTO == null || memberDTO.getGrade() !=0){
    			request.setAttribute("msg", " 권한없음.");
    			request.setAttribute("path", "../member/memberLogin.jsp");
    			RequestDispatcher rd= request.getRequestDispatcher("../common/common_result.jsp");
    			rd.forward(request, response);
    			
    			
    		}
    	%>
    
   
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">



</style>

</head>
<body>
			

<div class="container">
  		<div class="form-group">
  		<h2>NOTICE WRITE PAGE</h2>
			</div>
		<form  action="./noticeWriteResult.jsp" method="post">
   				
   				 <div class="form-group">
     				 	<label for="writer">WRITER:</label>
   				 		<input type="text" class="form-control" id="writer" placeholder="Enter Writer" name="writer"readonly="readonly" value="<%=memberDTO.getId() %>">
    			</div>
    			<div class="form-group">
      					<label for="title">TITLE:</label>
      					<input type="text" class="form-control" id="title" placeholder="Enter Title" name="title" >
    			</div>
    			
    			<div class="form-group">
      					<label for="contents">CONTENTS:</label>
      					<br><textarea rows="20" cols="50" id="contents" placeholder="작성하세요.." name="contents"></textarea>
      				
    			</div>
    			
    			<div class="form-group">
  				  <button type="submit" class="btn btn-default">Submit</button>
  				
  				
  				  
  				  <a href="./noticeList.jsp">List</a>
  				  
  				  
  				 </div>
  				  
		</form>
</div>





</body>
</html>