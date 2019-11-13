<%@page import="java.text.DecimalFormat"%>
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
	DecimalFormat dd= new DecimalFormat("###,###");
	gioHangBo gh1 = null;
	int count=0;
	long tien=0;
	if(session.getAttribute("user")==null){
		response.sendRedirect("dangnhap.jsp");
	}
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
      <li><a href="SachServlet?kt=1">Home</a></li>
      <li><a href="SachServlet?kt=2">Giỏ Hàng <%=count%>: <%=tien %></a></li>
      <li><a href="#"><%=session.getAttribute("user")  %></a></li>
      <li><a href="dangxuat.jsp">Đăng xuất</a></li>
    </ul>
  </div>
</nav>
<div class="container">
	<a href="SachServlet?kt=1">Tiep tuc mua hang</a>
<form method='post' action="ktGioHang.jsp">
	<table  class="table table-bordered">
		<thead class="thead-dark">
			<tr>
				<td scope="col">#</td>
				<td scope="col">Mã sách</td>
				<td scope="col">Tên sách</td>
				<td scope="col">Giá</td>
				<td scope="col">Số lượng</td>
				<td scope="col">Thành tiền</td>
				<td scope="col"></td>
			</tr>
		</thead>
		<tbody class="table-striped">
		<%
		//gioHangBo gh;
		long tong=0;
		if(session.getAttribute("gh")!=null){
			gioHangBo gh=(gioHangBo)session.getAttribute("gh");
			for(gioHangBean g: gh.ds){%>
				<tr>
					<td><input type="checkbox" name="checkbox" value="<%=g.getMasach()%>"></td>
					<td><%=g.getTensach() %></td>
					<td><%=g.getTacgia() %></td>
					<td><%=g.getGia() %></td>
					<td>   
						<input type="number" name="<%=g.getMasach()%>" value="<%=g.getSoluong()%>">
						<button  name="sua" type="submit" value="<%=g.getMasach()%>">Sửa</button>  
					</td>
					<td><%=dd.format(g.getThanhtien())%></td>
					<td><button name="xoa" type="submit" value="<%=g.getMasach()%>">Xóa</button></td>
				</tr>
			<%}%>
		<%}%>
		</tbody>
	</table>
	<input type="submit" value="xóa">
</form>
	<hr>
	<div align="center">Tong: <%=tien %></div>
</div>
</body>
</html>