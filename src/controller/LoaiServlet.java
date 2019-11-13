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

import Bo.loaiBo;
import Bo.sachbo;

/**
 * Servlet implementation class LoaiServlet
 */
@WebServlet("/LoaiServlet")
public class LoaiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoaiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8"); 
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String maloai = request.getParameter("ma");
		System.out.println(maloai);
		if(maloai!=null) {
			loaiBo l= new loaiBo();
			sachbo s= new sachbo();
			request.setAttribute("dsloai", l.getLoai1());
			//System.out.println(l.getLoai1().get(1).getTenLoai());
			request.setAttribute("dssach", s.TimSachTheoMa(maloai));
			RequestDispatcher rd= request.getRequestDispatcher("Trang1.jsp");
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
