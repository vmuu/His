package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.docController;
import entity.Doctor_info;

/**
 * Servlet implementation class docListServlet
 */
@WebServlet("/docListServlet")
public class docListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public docListServlet() {
    	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//获取数据集合
		docController docList=new docController();
		//页面传入的数据
		String parameter = request.getParameter("doctor_name");
		List<Doctor_info> list=docList.getDocList(parameter);
		//将数据的集合存入session
		HttpSession session = request.getSession();
		session.setAttribute("docList", list);
		
		request.getRequestDispatcher("doctorList.jsp").forward(request, response);
	}

}
