<%@page import="java.util.ArrayList"%>
<%@page import="Bean.loaiBean"%>
<%@page import="Bo.loaiBo"%>
<%@page import="Bean.sachbean"%>
<%@page import="Bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
        table, tr, td{
        	border: 1px solid blue;
        }
        table{
        	width:1000px;
            border-collapse:collapse;
        }
        .ma {
        	width: 20%;
        }
        .thongtin{
        	width:80%; 
        }
    </style>
</head>
<body>
	<table>
		<tr>
			<td class="ma">
				<%sachbo s= new sachbo();
					for(sachbean sb:s.getsach()){ %>
						<a href='htsach.jsp?masach=<%=sb.getMasach()%>'> <%=sb.getTensach() %></a><hr>
						<% 
					}
				%>
			</td>
			<td class="thongtin">
				<% String ts= request.getParameter("masach");
				if(ts==null){ %>
					<b>Chon dum 1 cai di</b>
				<% }else{%>
					<%for(sachbean sb:s.getsach()){
						if(sb.getMasach().equals(ts)){%>
							
							<img alt="" src="<%=sb.getAnh()%>"> <br>
							<b><%=sb.getMasach()%></b>
							<b><%=sb.getTensach()%></b>
							<b><%=sb.getTacgia()%></b> 
							<b><%=sb.getGia()%></b>
						<% }
					}%>	
				<%}%>
			</td>
		</tr>
		
	</table>
	<hr>
	<p>loai sach</p>
	<hr>
	<table>
		<tr>
			<td class="ma">
				<% loaiBo l= new loaiBo();
					for(loaiBean lb:l.getLoai()){ %>
						<a href='htsach.jsp?maloai=<%=lb.getMaLoai()%>'> <%=lb.getTenLoai() %></a><hr>
						<% 
					}
				%>
			</td>
			<td class="thongtin">
				<% String tsloai= request.getParameter("maloai");
				if(tsloai==null){ %>
					<b>Chon dum 1 cai di</b>
				<% }else{%>
					<%for(loaiBean lb:l.getLoai()){
						if(lb.getMaLoai().equals(tsloai)){
							ArrayList<String> dssach= new ArrayList<String>();
							String[] sach=lb.getDssach().split("[,]"); 
							int n=sach.length;
							for(int i=0;i<n;i++) {%>		
								<br><%=sach[i] %></br>
							<%}%>
						 <%}
					}%>	
				<%}%>
			</td>
		</tr>
		
	</table>
</body>
</html>