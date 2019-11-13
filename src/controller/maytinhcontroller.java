package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class maytinhcontroller
 */
@WebServlet("/maytinhcontroller")
public class maytinhcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public maytinhcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		//PrintWriter out = response.getWriter();
		String kt= request.getParameter("kt");
		String tsa= request.getParameter("txta");
		String tsb= request.getParameter("txtb");
		String pheptinh= request.getParameter("btn1");
		if(kt==null) {
			RequestDispatcher rd= request.getRequestDispatcher("maytinh.jsp");
			rd.forward(request, response);
		}
		else {
			Long a,b,kq=null;
			if(tsa!=null && tsb!= null){
				a=Long.parseLong(tsa);
				b=Long.parseLong(tsb);
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
					}
				}
			}
			String []ds= {tsa, tsb,kq.toString()};
			request.setAttribute("kq",ds);
			RequestDispatcher rd= request.getRequestDispatcher("maytinh.jsp");
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
