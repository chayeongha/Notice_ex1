<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.container {
	width: 500px;
	height: 600px;
	background-color: silver;
	margin: 0 auto;

}


</style>

</head>
<body>
			

<div class="container">
  		<div class="form-group">
  		<h2>NOTICE WRITE PAGE</h2>
			</div>
		<form  action="./noticeWriteResult.jsp" method="get">
   				
   				 <div class="form-group">
     				 	<label for="writer">WRITER:</label>
   				 		<input type="text" class="form-control" id="writer" placeholder="Enter Writer" name="writer">
    			</div>
    			<div class="form-group">
      					<label for="title">TITLE:</label>
      					<input type="text" class="form-control" id="title" placeholder="Enter Title" name="title">
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