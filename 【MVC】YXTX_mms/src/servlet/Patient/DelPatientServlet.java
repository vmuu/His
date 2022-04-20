package servlet.Patient;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.PatientController;
import entity.Bed_info;

@WebServlet("/DelPatientServlet")
public class DelPatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DelPatientServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置编码格式
		request.setCharacterEncoding("utf-8");
		// 获取删除ID
		Integer patient_id = Integer.parseInt(request.getParameter("patient_id"));
		String bed_no = request.getParameter("bed_no");
		System.out.println("5216+" + patient_id+"+床号"+bed_no);
		Bed_info bed_info = new Bed_info(null, bed_no, 1.1, null);
		// 调用删除的方法
		PatientController patientController = new PatientController();
		boolean delPatient = patientController.DelPatient(patient_id);
        boolean updataBedDel = patientController.updataBedDel(bed_info);
		System.out.println(delPatient);
		
		
		  // 判断是否成功ֵ 
		if (delPatient) {
		  request.getRequestDispatcher("PatientServlet").forward(request, response); }
		  else { request.getRequestDispatcher("PatientServlet").forward(request,
		  response); }
		 
	}

}
