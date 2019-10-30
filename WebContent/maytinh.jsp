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
		String tsa= request.getParameter("txta");
		String tsb= request.getParameter("txtb");
		String pheptinh= request.getParameter("btn1");
		Long a,b,kq=null;
		if(tsa!=null && tsb!= null){
			a=Long.parseLong(tsa);
			b=Long.parseLong(tsb);
			if(pheptinh.equals("+")){
				kq=a+b;
			}
			if(pheptinh.equals("-")){
				kq=a-b;
			}
			if(pheptinh.equals("*")){
				kq=a*b;
			}
			if(pheptinh.equals("/")){
				if(b!=0){
					kq= a/b;
				}
				else{
					out.print("<script>alert('bo tay');</script>");
				}
			}
		}
		%>
	<form action="maytinh.jsp" method="post" style="border: 1px solid red;width: auto;height: auto;text-align: center;">
		a: <input type="number" name="txta" value="<%=(tsa==null?"":tsa)%>"><br>
		b: <input type="number" name="txtb" value="<%=(tsb==null?"":tsb)%>" id="kq"><br>
		kq=<input type="number" name="txtkq" value="<%=kq%>"><br>
		<input type="submit" name="btn1" value="+">
		<input type="submit" name="btn1" value="-">
		<input type="submit" name="btn1" value="*">
		<input type="submit" name="btn1" value="/">
		
	</form>
</body>
</html>