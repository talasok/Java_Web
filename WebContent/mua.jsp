<%@page import="Bean.gioHangBean"%>
<%@page import="Bo.gioHangBo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String masach = request.getParameter("ms");
		String tensach = request.getParameter("ts");
		String tacgia = request.getParameter("tg");
		String giatam = request.getParameter("gia");
		//out.print(masach+" "+ tensach +" " + tacgia + " " + giatam);
		if(giatam != null){
			long gia = Long.parseLong(giatam);
			gioHangBo gh= null;
			//ktra đã tạo session chua // chưa thì tạo
			if(session.getAttribute("gh")==null){
				gh=new gioHangBo();
				session.setAttribute("gh", gh);
			}
			//b1: lấy session : gh lưu vào biến gh
			gh=(gioHangBo)session.getAttribute("gh");
			//b2: thay đổi biến: gio hàng thêm
			gh.them(masach, tensach, tacgia, gia, 1);
			//b3: lưu biến gh vào session 
			session.setAttribute("gh", gh);
			
			//b4 hiển thị
			response.sendRedirect("Trang2.jsp");
		} 
		
	%>
</body>
</html>