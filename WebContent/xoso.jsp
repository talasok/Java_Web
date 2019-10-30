<%@page import="java.util.RandomAccess"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
    border-collapse: collapse; 
    text-align: center;
}

td{
   height:25px;
  padding:20px 40px;
 
}
tr{
width:80px;
}
* { /* reset lại margin và padding cho các tag */
    margin: 0;
    padding: 0;
}
.tableStyle {
font-size: 15px;
    border: thin;
    border-color:black;
   	width:700px;
}
.tableStyle th {
    background-color: purple;
    padding: 5px;
}
.tableStyle td {
    background-color: #01DFD7;
    padding: 5px;
}
</style>
</head>
<body>

<%! public String xoso(int so,int sochuso){
	int count=0;
	int a = so;
	String xoso="";
	  while (a>0) {
          a /= 10;
          count++;    // tăng biến count lên 1
      }
	  int thieu=sochuso-count;
	  if(thieu>0){

		  for(int i=0;i<thieu;i++){
			  xoso=xoso+"0";
		  }
	  }
	  xoso+=String.valueOf(so);
     return xoso;
}%>
<%Random r=new Random(); %>
	<div align="center">
	<table border="1" class="tableStyle">
		<tr>
			<td colspan="12" > <b> XỔ SỐ KIẾN THIẾT MIỀN IT </b></td>
		</tr>
		<tr>
			<td width="60" ">Giải đặc biệt</td>
			<td colspan="12" > 	<b> <%=xoso(r.nextInt(100000),5) %>  </b> </td>
		</tr>
		<tr>
			<td width="60" > Giải nhất</td>
			<td colspan="12" >  	<b> <%=xoso(r.nextInt(100000),5) %>   </td>
			
		</tr>
		<tr>
			<td width="60">Giải nhì</td>
			<td colspan="6">  	<b><%=xoso(r.nextInt(100000),5) %>  </td>
			<td colspan="6">  	<b> <%=xoso(r.nextInt(100000),5) %>   </td>
		</tr>
		<tr>
			<td width="60" rowspan="2" >Giải ba</td>
			<td colspan="4" > 	<b> <%=xoso(r.nextInt(100000),5) %>   </td>
			<td colspan="4"> 	<b> <%=xoso(r.nextInt(100000),5) %> </td>
			<td colspan="4">   	<b> <%=xoso(r.nextInt(100000),5) %> </td>
			
		</tr>
		</tr>
			<td colspan="4" >  	<b> <% out.print(r.nextInt(100000)); %> </td>
			<td colspan="4">  	<b> <% out.print(r.nextInt(100000)); %> </td>
			<td colspan="4">   	<b> <% out.print(r.nextInt(100000)); %> </td>
		<tr>
		<tr >
			<td width="60" >Giải bốn</td>
			<td  colspan="3" >   	<b> <%=xoso(r.nextInt(10000),4) %>  </td>
			<td  colspan="3" >   	<b> <%=xoso(r.nextInt(10000),4) %> </td>
			<td  colspan="3" >  	<b> <%=xoso(r.nextInt(10000),4) %> </td>
			<td  colspan="3" >  	<b> <%=xoso(r.nextInt(10000),4) %>  </td>
			
		</tr>
		<tr >
			<td  rowspan="2" >Giải năm</td>
			<td  colspan="4" >   	<b><%=xoso(r.nextInt(10000),4) %>  </td>
			<td  colspan="4" >  	<b><%=xoso(r.nextInt(10000),4) %>  </td>
			<td  colspan="4" >   	<b> <%=xoso(r.nextInt(10000),4) %>  </td>
			
		</tr>
		</tr>
			<td colspan="4" >  	<b> <%=xoso(r.nextInt(10000),4) %> </td>
			<td colspan="4"> 	<b> <%=xoso(r.nextInt(10000),4)%> </td>
			<td colspan="4">   	<b> <%=xoso(r.nextInt(10000),4)%>  </td>
		<tr>
		<tr >
			<td width="60" >Giải sáu</td>
			<td  colspan="4"  >  	<b> <%=xoso(r.nextInt(1000),3)%>  </td>
			<td  colspan="4" >   	<b><%=xoso(r.nextInt(1000),3)%>  </td>
			<td  colspan="4" > 	<b><%=xoso(r.nextInt(1000),3)%>  </td>
		
			
		</tr>
		<tr >
			<td width="60">Giải bảy</td>
			<td colspan="3"  >  	<b> <%=xoso(r.nextInt(100), 2)%>  </td>
			<td colspan="3" >  	<b><%=xoso(r.nextInt(100), 2)%>  </td>
			<td colspan="3" >  	<b><%=xoso(r.nextInt(100), 2)%>  </td>
			<td colspan="3" >   	<b> <%=xoso(r.nextInt(100), 2)%> </td>
			
		</tr>
	</table>
	</div>
</body>
</html>