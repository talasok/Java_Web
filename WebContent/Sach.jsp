<%@page import="Bean.sachbean"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
			<%
			ArrayList<sachbean> ds = (ArrayList<sachbean>)request.getAttribute("dssach");
			int ss=ds.size();
			for(int i=0;i<ss;i++){
				sachbean s= ds.get(i);
			%>
		<tr>
			<td><img alt="" src="<%=s.getAnh()%>"> <br>
				<%=s.getTensach() %> <br>
				<%=s.getGia() %> <br>
				<a href="mua.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"> <img alt="" src="mua.jpg"> </a><hr>
			</td>
		</tr>
		<%} %>
	</table>
</body>
</html>