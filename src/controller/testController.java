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

/**
 * Servlet implementation class testController
 */
@WebServlet("/testController")
public class testController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//tạo ra đối tượng out
		PrintWriter out = response.getWriter();
		//out.print("<html><body> hello </body></html>");
		//tạo ra 1 session
		HttpSession session = request.getSession();
		session.setAttribute("ss", "haha hâha");
		//tạo ra 3 biến request
		request.setAttribute("gt1", (long)4*5);
		request.setAttribute("gt2", "le thanh Lam");
		String []ds= {"Nam","lam","hoa"};
		request.setAttribute("dsht", ds);
		//truyền 3 biến về trang vd.jsp
		RequestDispatcher rd= request.getRequestDispatcher("vd.jsp");
		rd.forward(request, response);
		//dieu hướng về vd.jsp
			//response.sendRedirect("vd.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
