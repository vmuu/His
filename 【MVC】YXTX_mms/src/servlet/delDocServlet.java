package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.docController;
import mapper.docMapper;
import service.docService;

/**
 * Servlet implementation class delDocServlet
 */
@WebServlet("/delDocServlet")
public class delDocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delDocServlet() {
        super();
        // TODO Auto-generated constructor stub
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
		docMapper docM=new docService();
		int docID=Integer.parseInt(request.getParameter("doctor_id"));
		System.out.println(docID);
		docController docC=new docController();
		boolean id=docC.deletDocInfo(docID);
		if (id) {
			request.getRequestDispatcher("docListServlet").forward(request, response);
		}else {
			request.getRequestDispatcher("main.jsp").forward(request, response);
		}
		
	}

}
