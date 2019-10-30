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
	if(request.getParameter("txtso")!=null){
		int n = Integer.parseInt(request.getParameter("txtso"));
		//ktra đã tạo session chưa.
		if(session.getAttribute("ss")==null)//chua tao
			session.setAttribute("ss", 0);
		//thao tác
		//b1: gán sesson vừa tạo
		int s= (int)session.getAttribute("ss");
		//b2: thay đổi biến
		s+=n;
		//b3: lưu biến session
		session.setAttribute("ss", s);
	}
	%>
	<form action="tinhTong.jsp" method="post">
		n=<input type="text" name="txtso" value="<%=(session.getAttribute("ss")==null?"":session.getAttribute("ss"))%>"> <br>
		<input type="submit" name="btnt" value="Tong">
	</form>
</body>
</html>