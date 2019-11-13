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
	String tsa=null,tsb=null,kq=null;
	String []ds= (String[])request.getAttribute("kq");
	if(ds!=null){
		tsa=ds[0];
		tsb=ds[1];
		kq=ds[2];
	}
%>
	<form action="maytinhcontroller?kt=1" method="post" style="text-align: center;">
		a: <input type="number" name="txta" value="<%=(tsa==null?"":tsa)%>"><br>
		b: <input type="number" name="txtb" value="<%=(tsb==null?"":tsb)%>"><br>
		kq=<input type="number" name="txtkq" value="<%=kq==null?"":kq%>"><br>
		<input type="submit" name="btn1" value="+">
		<input type="submit" name="btn1" value="-">
		<input type="submit" name="btn1" value="*">
		<input type="submit" name="btn1" value="/">
	</form>
</body>
</html>