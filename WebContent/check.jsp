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
		String name = request.getParameter("txtname");
		String pass = request.getParameter("txtpass");
		String vaitro = request.getParameter("vaitro");
		if(vaitro.equals("1") && name.equals("hoang") && pass.equals("123"))
			response.sendRedirect("login.jsp?kt=dung");
		else{
			if(vaitro.equals("2") && name.equals("hoang") && pass.equals("123"))
				response.sendRedirect("login.jsp?kt=dung");
			else{
				response.sendRedirect("login.jsp?kt=sai");
			}
		}
		
		
	 %>
</body>
</html>