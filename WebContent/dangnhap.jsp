<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="ktdncontroller?kt=1" method="post" style="text-align: center;">
  		UserName: <input type="text" name="txtname"> <br>
  		Password: <input type="password" name="txtpass"> <br>
  		<input type="submit" name="btnLogin" value="login">
	</form>
	<a href="ktdncontroller?kt=1">gọi lên servelet</a>
</body>
</html>