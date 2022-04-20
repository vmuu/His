package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.docController;
import entity.Doctor_info;

/**
 * Servlet implementation class addDocServlet
 */
@WebServlet("/addDocServlet")
public class addDocServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addDocServlet() {
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
		//防止乱码
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		//设置参数保存界面传入的值
		Integer doctor_id=null;
		String doctor_name=request.getParameter("doctor_name");
		String doctor_sex=request.getParameter("doctor_sex");
		String doctor_title=request.getParameter("doctor_title");
		String doctor_job=request.getParameter("doctor_job");
		String doctor_subject=request.getParameter("doctor_subject");
		String doctor_birthday=request.getParameter("doctor_birthday");
		String job_tiem=request.getParameter("job_tiem");
		Doctor_info docI=new Doctor_info(doctor_id, doctor_name, doctor_sex, doctor_title, doctor_job, doctor_subject, doctor_birthday, job_tiem);
		docController docC=new docController();
		boolean dootorAdd = docC.addDocInfo(docI);
		if (dootorAdd) {
			request.getRequestDispatcher("doctorList.jsp").forward(request, response);//跳转到主界面
		}else {
			request.getRequestDispatcher("addDoctor.jsp").forward(request, response);//跳转到添加界面
		}
	}

}
