<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* { /* reset lại margin và padding cho các tag */
    margin: 0;
    padding: 0;
}
.tableStyle {
    border: none;
    width: 100%;
}
.tableStyle th {
    background-color: #cad8fa;
    padding: 5px;
}
.tableStyle td {
    background-color: #f0e7da;
    padding: 5px;
}
</style>
</head>
<body>
	<table class="tableStyle" >
		<% for(int i=1;i<=9;i++){ %>
			<tr>
			<% for(int j=1;j<=9;j++){
				%>
					<td><%=i%> * <%=j%> = <%=i*j %></td>
  				<% } %>
			</tr>
			<%}%>
	</table>
</body>
</html>