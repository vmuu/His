package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.loginController;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String account=request.getParameter("account");
		String password=request.getParameter("password");
		
		System.out.println(account+","+password);
		loginController loginController=new loginController();
		boolean login = false;
		login = loginController.loginCO(account,password);
		if (!account.trim().equals("")||account!=null||!password.trim().equals("")||password!=null) {
		
		}
		
		if (login) {
			request.getRequestDispatcher("main.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
	}

}
