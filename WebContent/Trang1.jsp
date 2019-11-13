<%@page import="Bean.loaiBean"%>
<%@page import="Bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bo.sachbo"%>
<%@page import="Bo.gioHangBo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%
	if(session.getAttribute("user")==null){
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
      <li><a href="#"><%=session.getAttribute("user") %></a></li>
      <li><a href="dangxuat.jsp">Đăng xuất</a></li>
    </ul>
  </div>
</nav>
<div class="container">
	<div>
        <form action="SearchServlet" method="get" style="display: flex;padding-bottom: 10px; ">
            <input type="text" name="key" value="" class="form-control" placeholder="Search for..." >
            <div class="input-group-append">
                <button class="btn btn-primary" type="submit"style="height: 34px">
                    Tìm kiếm
                </button>
            </div>
        </form>
    </div>
	<div class="row">
		<div class="col-md-3">
		
		    <div class="panel panel-default">
				<div class="panel-heading">CHỦ ĐỀ SÁCH</div>
					<div class="list-group">
						<%
						 ArrayList<loaiBean> ds1 = (ArrayList<loaiBean>)request.getAttribute("dsloai");
						 for(loaiBean h : ds1){
						 %>
						<a href="LoaiServlet?ma=<%=h.getMaLoai()%>" class="list-group-item">
						 <%=h.getTenLoai() %>
						 </a>
						<%} %> 
					</div>
				
			 	</div>
	                
	 </div>
	 <div class="col-md-9">
	<table class="table">
<%
	ArrayList<sachbean> ds = (ArrayList<sachbean>)request.getAttribute("dssach");
	//sachbo sach = new sachbo();
	//ArrayList<sachbean> ds = sach.getsach();
	int ss=ds.size();
	for(int i=0;i<ss;i++){
	sachbean s= ds.get(i);
%>
	<tr>
		<td><img alt="" src="<%=s.getAnh()%>"> <br>
			<%=s.getTensach() %> <br>
			<%=s.getGia() %> <br>
			<a href="SachServlet?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"> <img alt="" src="mua.jpg"> </a>
		</td>
	</tr>
	<%} %>
</table>
</div>
</div>
</div>
</body>
</html>