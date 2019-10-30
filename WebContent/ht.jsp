<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%String ts= request.getParameter("k");
	out.print(ts+"<hr>");
	if(ts.equals("ts"))
		out.print("hien thi trang thoi su");
	else
		if(ts.equals("tt"))
			out.print("hien thi trang the thao");
		else
				out.print("hien thi trang quoc te");
	%>
</body>
</html>