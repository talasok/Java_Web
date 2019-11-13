package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.test;
import Bo.loaiBo;
import Bo.sachbo;
import Bo.testBo;
import Dao.DungChung;

/**
 * Servlet implementation class ktdncontroller
 */
@WebServlet("/ktdncontroller")
public class ktdncontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
      testBo bo= new testBo();
    
      DungChung dc = new DungChung();
      
     public boolean check(String user,String pass) {
//    	 ArrayList<test> ds;
//    	
//			try {
//				dc.KetNoi();
//				//ds = bo.gettest();
//				//for(test t:ds) {
//					System.out.println(user+":"+pass);
//					if("hoang".contains(user) && "123".contains(pass)) {
//						return true;
//					}
//				//}
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
    	 if("hoang".contains(user) && "123".contains(pass))
    		 return true;
    	 
		return false;
     }
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ktdncontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dc.KetNoi();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String kt= request.getParameter("kt");
		String user= request.getParameter("txtname");
		//System.out.println(user);
		String pass= request.getParameter("txtpass");
		  
		PrintWriter out = response.getWriter();
		//System.out.println(session.getAttribute("user"));
		
		if(kt==null) 
			if(session.getAttribute("user")==null)
			{
				
				RequestDispatcher rd= request.getRequestDispatcher("dangnhap.jsp");
				rd.forward(request, response);
				
			}
			else {
				loaiBo l= new loaiBo();
				sachbo s= new sachbo();
				request.setAttribute("dsloai", l.getLoai1());
				System.out.println(l.getLoai1().get(1).getTenLoai());
				request.setAttribute("dssach", s.getSach());
				RequestDispatcher rd= request.getRequestDispatcher("Trang1.jsp");
				rd.forward(request, response);
			}
		else {
			if(check(user,pass)==true) {
				if(session.getAttribute("user")==null)
					session.setAttribute("user", user);
				loaiBo l= new loaiBo();
				sachbo s= new sachbo();
				request.setAttribute("dsloai", l.getLoai1());
				System.out.println(l.getLoai1().get(1).getTenLoai());
				request.setAttribute("dssach", s.getSach());
				RequestDispatcher rd= request.getRequestDispatcher("Trang1.jsp");
				rd.forward(request, response);
			}
			else {
				System.out.println("\n\nloi-\n\n");
				RequestDispatcher rd= request.getRequestDispatcher("dangnhap.jsp");
				rd.forward(request, response);
			}
			//out.print(user+":"+pass+":"+kt);
		}
//		if(kt.equals("1")) {
//			if(user.equals("hoang") && pass.equals("123")) {
//				RequestDispatcher rd= request.getRequestDispatcher("vd.jsp");
//				rd.forward(request, response);
//			}
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
