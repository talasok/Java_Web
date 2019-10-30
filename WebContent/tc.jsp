<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java nâng cao - WEB </title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
   <link rel="stylesheet" href="dd.css">
</head>
<body>
<%-- <%@ include file="dau.jsp" %> --%>
	<table width ='1000' align ='center'>
  		<tr>
  			<td colspan="3" bgcolor="green" >
  			
  			
  			<nav class="navbar navbar-inverse">
  				<div class="container-fluid">
  			    	<div class="navbar-header">
      					<a class="navbar-brand" href="#">WebSiteName</a>
  			    	</div>
  			    	<ul class="nav navbar-nav">
   			   		 <li class="active"><a href="#">Home</a></li>
               		 <li><a href="https://facebook.com/">facebook</a></li>
             	     <li><a href="http://google.com/">Google</a></li>
                	 <li><a href="#">Page 3</a></li>
    				</ul>
 				</div>
			</nav>
  			
  			
  			</td> 
  		</tr>
  		<tr>
  			<td valign='top' width='200' bgcolor="yellow"> 
				<a href='hihi.jsp'> HOME </a> <hr>
  				<a href='http://docbao.vn'> ĐỌC BÁO </a> <hr>
  				<a href='c++.txt'> DOWNLOAD TXT </a> <hr>
  				<a href='hello.doc'> DOWNLOAD DOC </a> <hr>
  				</td>
  				
  			<td valign='top' width='600' >
  				<% for(int i=1;i<=3;i++){ %>
  					<marquee direction="left">
  						<img width='600' height='200' src="anh.png"> 
  					</marquee> 
  				<% } %>
  			</td>
  			<td valign='top' width='200' bgcolor="red">Tìm kiếm </td>
  			
  		</tr>
  		<tr>
  			<td colspan="3" > Bản quền</td> 
  		</tr>
	</table>

</body>
</html>