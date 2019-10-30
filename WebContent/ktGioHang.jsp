<%@page import="Bean.gioHangBean"%>
<%@page import="Bo.gioHangBo"%>
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
	gioHangBo gh =null;
	gh = (gioHangBo)session.getAttribute("gh");
	String []ma= null;
	String sl =null;
	String [] listMa = request.getParameterValues("checkbox");
	String []xoa=request.getParameterValues("xoa");
	ma = request.getParameterValues("sua");
	if(listMa !=null){
		int size = listMa.length;
		for(int i=0;i<size;i++){
			gh.xoa(listMa[i]);
		}
	}else{
		if(xoa!=null){
			gh.xoa(xoa[0]);
		}else
			if(ma!=null){
				sl= request.getParameter(ma[0]);
				if(sl!=""){
					int soluongthaydoi = Integer.parseInt(sl);
					
					gh.thayDoiSoLuong(ma[0], soluongthaydoi);
				}
			}
	}
	//if(gh.count()<1)
		//response.sendRedirect("Trang1.jsp");
	//else
	response.sendRedirect("Trang2.jsp");
%>
</body>
</html>