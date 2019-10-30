<%@page import="Bo.gioHangBo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("dangnhap.jsp");
	}
	int count=0;
	long tien=0;
	gioHangBo gh1 = null;
	if(session.getAttribute("gh")!=null){
		gh1 = (gioHangBo)session.getAttribute("gh");
		count =gh1.count();
		tien = gh1.Tong();
	}
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="Trang1.jsp">Home</a></li>
      <li><a href="Trang2.jsp">Giỏ Hàng <%=count%>: <%=tien %></a></li>
      <li><a href="#"><%=session.getAttribute("name") %></a></li>
      <li><a href="dangxuat.jsp">Đăng xuất</a></li>
    </ul>
  </div>
</nav>
<div class="container">
	<%@include file='NoidungHome.jsp'%>
</div>
</body>
</html>