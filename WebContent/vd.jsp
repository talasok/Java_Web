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
<%=session.getAttribute("ss")%>
<%
	long gh1= (long)request.getAttribute("gt1");
	String gh2= (String)request.getAttribute("gt2");
	String []ds= (String[])request.getAttribute("dsht");
%>
	Gh1: <%=gh1%>
	Gh1: <%=gh2%>
<% 
	int size= ds.length;
	for(int i=0;i<size;i++){
		out.print("<hr>"+ds[i]+"</hr>");
	}
	
%>
</body>
</html>