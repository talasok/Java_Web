
<%@page import="Bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bo.sachbo"%>
<table class="table">
<%
	sachbo sach = new sachbo();
	ArrayList<sachbean> ds = sach.getsach();
	int ss=ds.size();
	for(int i=0;i<ss;i++){
	sachbean s= ds.get(i);
%>
	<tr>
		<td><img alt="" src="<%=s.getAnh()%>"> <br>
			<%=s.getTensach() %> <br>
			<%=s.getGia() %> <br>
			<a href="mua.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"> <img alt="" src="mua.jpg"> </a>
		</td>
		<% i++;s= ds.get(i); %>
		<td><img alt="" src="<%=s.getAnh()%>"> <br>
			<%=s.getTensach() %> <br>
			<%=s.getGia() %> <br>
			<a href="mua.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"> <img alt="" src="mua.jpg"> </a>
		</td>
		<% i++;s= ds.get(i); %>
		<td><img alt="" src="<%=s.getAnh()%>"> <br>
			<%=s.getTensach() %> <br>
			<%=s.getGia() %> <br>
			<a href="mua.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&tg=<%=s.getTacgia()%>&gia=<%=s.getGia()%>"> <img alt="" src="mua.jpg"> </a>
		</td>
	</tr>
	<%} %>
</table>