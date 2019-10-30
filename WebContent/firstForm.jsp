<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap.min.css">
<link rel="stylesheet" href="firstForm.css">
</head>
<body>
<%!
private static class name{
	String name;
	String value;
};
%>
<%
ArrayList<name> a = new ArrayList<name>();
Enumeration en=request.getParameterNames();
while(en.hasMoreElements())
{
	Object objOri=en.nextElement();
	String param=(String)objOri;
	String value=request.getParameter(param);
	out.println("Parameter Name is '"+param+"' and Parameter Value is '"+value+"<br>");
}	
%>
<form action="firstForm.jsp" method='get'>
	<table>  
		<tr>   
		  <td>	
		  	<input type="text" name="username" value='' placeholder='Nhap Username'>    	 
		  </td>
		  <td>    	
		  	<input type="text" name="hoten" value='' placeholder='Nhap Ho Va Ten'>
		  </td>
		</tr>
		<tr>
			<td>  		
		  	<input type="password" name="password" value='' placeholder='Nhap mat khau'>
		  </td>  
		  <td>  		
		  	<select name='select1'>
		  		<option value="0" selected>Gioi Tinh</option>
		  		<option value="1">Nam</option>
		  		<option value="2">Nu</option>
		  		<option value="3">Gioi tinh khac</option>
		  	</select>
		  </td>    
		</tr>
		<tr>
			<td>
				<input type="password" name="password2" value='' placeholder='Nhap lai mat khau'>
			</td>
			<td>
				<input style="height: 22px;" type="date" name='date'>
			</td>
		</tr>
		<tr>
			<td> 		
				<input type="email" name="email" value='' placeholder='Nhap dia chi email'>
			</td>
			<td>
				<select name='select2'>
		   		<option value="0" selected>Tinh/TP</option>
		   		<option value="1">Hue</option>
		   		<option value="2">Quang Binh</option>
		   		<option value="3">Quang Tri</option>
		   	</select>
			</td> 	
		</tr> 
		<tr>
			<td> 		
				<input type="email" name="email2" value='' placeholder='Nhap lai dia chi email'>
			</td> 	
		</tr>  
</table>
	<input type='submit' name='btn' id='but1' value='Dang ky'>
	<input type='checkbox' name='ckb1' id='but1' value='Dieu khoan'>Toi dong y voi cac Chinh Sach va Thoa Thuan Su dung cua TaiLieu.Vn
</form>
</body>
</html>