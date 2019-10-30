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
		String name = request.getParameter("txtname");
		String pass = request.getParameter("txtpass");
		String vaitro = request.getParameter("vaitro");
		if(name!=null && pass!=null && vaitro!=null){
			if(vaitro.equals("1") && name.equals("hoang") && pass.equals("123"))
				response.sendRedirect("login.jsp?kt=dung");
			else{
				if(vaitro.equals("2") && name.equals("hoang") && pass.equals("123"))
					response.sendRedirect("login.jsp?kt=dung");
				else{
					response.sendRedirect("login.jsp?kt=sai");
				}
			}
		}
		
		
	 %>
	<%
	//làm trên 1 trang login 
	//đăng nhập tailieu.vn kich đăng nhập thì truyền dữ liệu sang nếu sai thì vẫn ở trang đó dữ liệu vẫn k đổi
		String ktra= request.getParameter("kt");
		if(ktra!=null && ktra.equals("dung"))
			out.print("dang nhap dung");
		else{
	%>
	<form action="login.jsp" method="post">
		Usename	<input type="text" name="txtname" ><br>
		Password <input type="password" name="txtpass"><br>
		Vai tro
		<select name="vaitro">
			<option value="1">giao vien</option>
			<option value="2">sinh vien</option>
		</select><br>
		<button type="submit">Login</button>
	</form>
	<%
		if(ktra!=null)
			out.print("<font color='red'>dang nhap sai</font>");
		}
	%>
</body>
</html>