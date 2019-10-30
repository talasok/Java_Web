<%@page import="Bean.gioHangBean"%>
<%@page import="Bo.gioHangBo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>trang 2</title>
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
	
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="Trang1.jsp">Home</a></li>
      <li><a href="Trang2.jsp">Giỏ Hàng</a></li>
      <li><a href="#"><%=session.getAttribute("name") %></a></li>
      <li><a href="dangxuat.jsp">Đăng xuất</a></li>
    </ul>
  </div>
</nav>