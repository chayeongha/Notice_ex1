<%@page import="com.cyh.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
		MemberDTO memberDTO =(MemberDTO) session.getAttribute("member");
		
%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="<%= request.getContextPath() %>/index.jsp">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="<%= request.getContextPath() %>/notice/noticeList.jsp">Notice List</a></li>
          <li><a href="<%= request.getContextPath() %>/notice/noticeWrite.jsp">Notice Write</a></li>
          <li><a href="">fdfaf</a></li>
        </ul>
      </li>
      <li><a href="<%= request.getContextPath() %>/notice/noticeList.jsp">Notice</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
   
    <!--로그인되면 바뀜 -->
    <% if(memberDTO != null){ %>
    
      <li><a href="<%= request.getContextPath() %>/member/memberMypage.jsp"><span class="glyphicon glyphicon-education"></span> My Page</a></li>
      <li><a href="<%= request.getContextPath() %>/member/memberLogout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    <%}else {%>
    <!--로그인 전  -->
	  <li><a href="<%= request.getContextPath() %>/member/memberJoinForm.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="<%= request.getContextPath() %>/member/memberLogin.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    <%} %>
    </ul>
  </div>
</nav>
