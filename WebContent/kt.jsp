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
	String name=request.getParameter("txtname");
	String pass=request.getParameter("txtpass");
	//if(!name.isEmpty())
	if(name.equals("hoang") && pass.equals("123"))
	{
		session.setAttribute("name", name);
		response.sendRedirect("Trang1.jsp");
	}
	else{
		//response.sendRedirect("dangnhap.jsp");
		out.print("<script >alert('dang nhap sai');</script>");
	}
	%>
	
</body>
</html>