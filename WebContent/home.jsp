<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%	Calendar c=Calendar.getInstance();
	int ngay=c.get(Calendar.DAY_OF_MONTH);
	int thang =c.get(Calendar.MONTH)+1;
	int nam =c.get(Calendar.YEAR);
%>
<div align='right'>
	Hôm nay, ngày <%=ngay%>tháng  <%=thang %> năm <%=nam %>
	</div>
	<hr>
		Chon ngay:
	<select name='sngay'>
		<% for(int i=1;i<31;i++){ %>
		<option <%=((i==ngay)?"selected":"") %>> <%=i %></option>
			<%}%>
	</select>
	<select name='sthang'>
		<% for(int i=1;i<13;i++){ %>
			<option <%=((i==thang)?"selected":"") %>> <%=i %></option>
			<%} %>
	</select>
	<select name='snam'>
		<% for(int i=nam-10;i<nam+1;i++){ %>
			<option <%=((i==nam)?"selected":"") %>> <%=i %></option>
			<%} %>
	</select>
	
</body>
</html>