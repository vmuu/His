package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.CharegController;
import entity.pojo.ChargeInfo;

/**
 * Servlet implementation class ChargeServlet
 */
@WebServlet("/ChargeServlet")
public class ChargeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ChargeServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//获取数据集合
		CharegController charegController = new CharegController();
		//页面传入的数据
		String Keyword = request.getParameter("name");
		
		List<ChargeInfo> chargeList = charegController.chargeList(Keyword);
		//将数据的集合存入session
		HttpSession session = request.getSession();
		session.setAttribute("chargeList", chargeList);
		
		request.getRequestDispatcher("chargeInfo.jsp").forward(request, response);
	}
}
