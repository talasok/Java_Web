package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bo.gioHangBo;
import Bo.loaiBo;

/**
 * Servlet implementation class SachServlet
 */
@WebServlet("/SachServlet")
public class SachServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SachServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ok");
//		String kt= request.getParameter("kt");
//		if(kt==null) {
//			if(kt.contains("1")) {
//				loaiBo l= new loaiBo();
//				request.setAttribute("dsloai", l.getLoai1());
//				RequestDispatcher rd= request.getRequestDispatcher("Trang1.jsp");
//				rd.forward(request, response);
//			}
//			if(kt.contains("2")) {
//				
//				RequestDispatcher rd= request.getRequestDispatcher("Trang2.jsp");
//				rd.forward(request, response);
//			}
//		}
		String masach = request.getParameter("ms");
		String tensach = request.getParameter("ts");
		String tacgia = request.getParameter("tg");
		String giatam = request.getParameter("gia");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");  
		PrintWriter out = response.getWriter();
		System.out.println(masach+":"+tensach+":"+tacgia+":"+giatam);
		if(giatam != null){
			HttpSession session = request.getSession();
			long gia = Long.parseLong(giatam);
			gioHangBo gh= null;
			//ktra đã tạo session chua // chưa thì tạo
			if(session.getAttribute("gh")==null){
				gh=new gioHangBo();
				session.setAttribute("gh", gh);
			}
			//b1: lấy session : gh lưu vào biến gh
			gh=(gioHangBo)session.getAttribute("gh");
			//b2: thay đổi biến: gio hàng thêm
			gh.them(masach, tensach, tacgia, gia, 1);
			//b3: lưu biến gh vào session 
			session.setAttribute("gh", gh);
			
			//b4 hiển thị
			//response.sendRedirect("Trang2.jsp");
			RequestDispatcher rd= request.getRequestDispatcher("Trang2.jsp");
			rd.forward(request, response);
		} 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
