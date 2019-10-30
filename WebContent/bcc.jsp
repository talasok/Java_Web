<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		int n=0;
	 	String ts= request.getParameter("so");
	/* 	int so;
		so=Integer.parseInt(ts); */
	
		Random r = new Random();
		n=r.nextInt(201);
		
	%>
	<table>
		<tr>
			<td>
				
				<b>Chon 1 muc</b>
				<%for(int i=1;i<=n;i++){ %>
					<a href='bcc.jsp?so=<%=i %>'> <%=i%> </a>
					<%} %>
					 <hr>
					
				
			</td>
		</tr>
		<tr>
			<td>
				<%if(ts!=null){
					int so=Integer.parseUnsignedInt(ts);
					%>
					<b><%=so%></b>
					<%
					for(int i=1;i<=10;i++){ %>
					<a><%=so*i%></a>
					<%}
				}
			%>
			</td>
		</tr>
	</table>
	
</body>
</html>