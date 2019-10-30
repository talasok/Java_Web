<%@page import="java.util.Random"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
 <style type="text/css">
        table, tr, td{
        	border: 1px solid blue;
        }
        table{
        	width:1000px;
            border-collapse:collapse;
        }
		.so-xo {
			line-height: 1.5;
			width: 800px;
			font-size: 30px;
			word-spacing: 100px;
		}
		.bang-cuu-chuong {
			text-align: center;
			font-size: 20px;
			word-spacing: 4px;
		}
    </style>
</head>
<body>
	<%!
	public String so(int x){
		Random r= new Random();
		String soxo=null;
		if(x==100){
			int y=r.nextInt(x);
			soxo= String.valueOf(y/10) + String.valueOf(y%10);
		}
		if(x==1000){
			int y=r.nextInt(x);
			soxo=String.valueOf(y/100) +String.valueOf(y%100/10) + String.valueOf(y%100%10);
		}
		if(x==10000){
			int y=r.nextInt(x);
			soxo=String.valueOf(y/1000)+String.valueOf(y%1000/100) +String.valueOf(y%1000%100/10) + String.valueOf(y%1000%100%10);
		}
		if(x==100000){
			int y=r.nextInt(x);
			soxo=String.valueOf(y/10000)+String.valueOf(y%10000/1000)+String.valueOf(y%10000%1000/100) +String.valueOf(y%10000%1000%100/10) + String.valueOf(y%10000%1000%100%10);
		}
		if(x==1000000){
			int y=r.nextInt(x);
			soxo=String.valueOf(y/100000)+String.valueOf(y%100000/10000)+String.valueOf(y%100000%10000/1000)+String.valueOf(y%100000%10000%1000/100) +String.valueOf(y%100000%10000%1000%100/10) + String.valueOf(y%100000%10000%1000%100%10);
		}
		return  soxo;
		
	}%>
	<hr>
	<div align="center">
		<p>Bảng cửu Chương</p>
	</div>
	<hr>
	<div align="center">
		<table border="1px" class="bang-cuu-chuong" id="bcc">
		<%for(int i=1;i<=9;i++) {%>
			<tr>
			<%for(int j=1;j<=9;j++) {%>
				<td><%=j %> x <%=i %> = <%=i*j %></td>
			<%} %>
			</tr>
		<% }%>
		</table>
	</div>
	<hr>
	<div align="center">
		<p>Kết quả sổ xố</p>
	</div>
	<hr>
	<div align="center" >
	<table class="so-xo" id="sx" >
		<tbody align="center">
			<tr>
				<td >Giải.8</td>
				<td >
					<span><%= so(100)%></span>
				</td>
			</tr>
			<tr>
				<td >Giải.7</td>
				<td >
					<span><%= so(1000)%></span>
				</td>
			</tr>
			<tr>
				<td >Giải.6</td>
				<td >
					<span><%= so(10000)%></span>
					<span><%= so(10000)%></span>
					<span><%= so(10000)%></span>
				</td>
			</tr>
			<tr>
				<td >Giải.5</td>
				<td ><span ><%= so(10000)%></span></td>
			</tr>
			<tr>
				<td rowspan="2" >Giải.4</td>
				<td id="bo" >
					<span ><%= so(100000)%></span>
					<span><%= so(100000)%></span>
					<span><%= so(100000)%></span>
					<span><%= so(100000)%></span>
				</td>
			</tr>
			<tr id="bo">
				<td	id="bo" >
					<span><%= so(100000)%></span>
					<span><%= so(100000)%></span>
					<span><%= so(100000)%></span>
				</td>
			</tr>
			</tr>
			<tr>
				<td >Giải.3</td>
				<td >
					<span><%= so(100000)%></span>
					<span><%= so(100000)%></span>
				</td>
			</tr>
			<tr>
				<td >Giải.2</td>
				<td ><span><%= so(100000)%></span></td>
			</tr>
			<tr>
				<td >Giải.1</td>
				<td ><span><%= so(1000000)%></span></td>
			</tr>
			<tr>
				<td >Giải.ĐB</td>
				<td><span><%= so(1000000)%></span></td>
			</tr>
		</tbody>
	</table>
	</div>
	<hr> 	 
	<hr>
</body>
</html>