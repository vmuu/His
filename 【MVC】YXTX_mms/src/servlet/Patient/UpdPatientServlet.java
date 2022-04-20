package servlet.Patient;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.PatientController;
import entity.Bed_info;
import entity.Patient_info;

/**
 * Servlet implementation class UpdPatientServlet
 */
@WebServlet("/UpdPatientServlet")
public class UpdPatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdPatientServlet() {
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
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String patient_id = request.getParameter("patient_id");
//		Integer patient_id=Integer.getInteger(parameter);
//		Integer patient_id = Integer.parseInt(request.getParameter("patient_id"));
        
	    String	patient_name=request.getParameter("patient_name");
		String	patient_sex=request.getParameter("patient_sex");
		Integer patient_age	=Integer.parseInt(request.getParameter("patient_age"));
		String	patient_disease=request.getParameter("patient_disease");
		
		
		String	admission_date	=request.getParameter("admission_date");
		String	discharge_date	=request.getParameter("discharge_date");
		
		
		System.out.println(patient_id+"dksjd"+"fdf"+patient_name+"fdf"+ patient_sex+"fdf"+ patient_age+"fdf"+ patient_disease+"fdf"+"fdf"+ admission_date+"fdf"+ discharge_date);
		
		Patient_info patient_info = new Patient_info(patient_id, null, null, patient_name, patient_sex, patient_age, patient_disease, null, admission_date, discharge_date);
		PatientController patientController = new PatientController();
		
		boolean updataPatient = patientController.updataPatient(patient_info);
		
		if (updataPatient) {
			request.getRequestDispatcher("PatientServlet").forward(request, response);//ת����ҳ��
			
		} else {
			request.getRequestDispatcher("UpdJsp").forward(request, response);//ת����ҳ��
		}
}
	}


