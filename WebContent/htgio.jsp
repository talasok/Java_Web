<%@page import="Bo.gioHangBo"%>
<%@page import="Bean.gioHangBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="Trang1.jsp">Tiep tuc mua hang</a>
	<table align="center" style="border: 1px solid black;width: 800px;text-align: center;">
		<%
		//gioHangBo gh;
		long tong=0;
		if(session.getAttribute("gh")!=null){
			gioHangBo gh=(gioHangBo)session.getAttribute("gh");
			tong= gh.Tong();
			for(gioHangBean g: gh.ds){%>
				<tr>
					<td><%=g.getTensach() %></td>
					<td><%=g.getTacgia() %></td>
					<td><%=g.getGia() %></td>
					<td><%=g.getSoluong() %></td>
					<td><form action="">
						<input>
					</form>
					</td>
					<td><%=g.getThanhtien()%></td>
				</tr>
			<%}%>
		<%}%>
	</table>
	<%out.print("Tong="+tong); %>
</body>
</html>