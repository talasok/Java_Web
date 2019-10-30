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
		if(tsa!=null && tsb!= null){
			long a=Long.parseLong(tsa);
			long b=Long.parseLong(tsb);
			long kq=0;
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
					out.print(a +pheptinh +b +"="+kq);
				}
				else{
					out.print("may ngu a, chua hoc lop 1 a");
				}
			}
		}
	%>
</body>
</html>