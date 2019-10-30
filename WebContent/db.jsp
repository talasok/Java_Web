<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table align='center' width='800'>
		<tr>
			<td>
				<a href='db.jsp?k=ts'>Tin thời sự</a> <hr>
				<a href='db.jsp?k=qt'>Tin quốc tế</a> <hr>
				<a href='db	.jsp?k=tt'>Tin thể thao</a> <hr>
			</td>
			<td>
				 <%String ts= request.getParameter("k");
				 	if(ts==null)
				 		out.print("Làm ơn chọn 1 mục.............");
				 	else
				 		if(ts.equals("ts"))
				 			out.print("hien thi trang thoi su");
				 		else
				 			if(ts.equals("tt"))
				 				out.print("hien thi trang the thao");
				 			else
				 					out.print("hien thi trang quoc te");
				 %>
			</td>
		</tr>
	</table>
</body>
</html>