package servlet.Patient;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import controller.PatientController;
import entity.Bed_info;
import entity.Category;
import entity.Doctor_info;
import entity.Patient_info;
import entity.pojo.Patient;

@WebServlet("/AddPatientServlet")
public class AddPatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddPatientServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);	
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * PatientController patientController = new PatientController(); List<category>
		 * categoryList = patientController.SelCategory(); List<doctor_info> DoctorList
		 * = patientController.SelDoctor(); List<bed_info> selBedList =
		 * patientController.SelBed(); HttpSession session = request.getSession();
		 * HttpSession session1 = request.getSession(); HttpSession session2 =
		 * request.getSession(); session.setAttribute("DoctorList", DoctorList);
		 * session1.setAttribute("categoryList", categoryList);
		 * session2.setAttribute("selBedList", selBedList);
		 * 
		 * System.out.println(DoctorList);
		 * request.getRequestDispatcher("addPatient.jsp").forward(request, response);
		 */
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
		
			Integer	patient_subject	=Integer.parseInt(request.getParameter("patient_subject"));
			String	patient_bedno=request.getParameter("patient_bedno");
		    String	patient_name=request.getParameter("patient_name");
			String	patient_sex=request.getParameter("patient_sex");
			Integer patient_age	=Integer.parseInt(request.getParameter("patient_age"));
			String	patient_disease=request.getParameter("patient_disease");
			Integer patient_doctor=Integer.parseInt(request.getParameter("patient_doctor"));
			String	admission_date	=request.getParameter("admission_date");
			String	discharge_date	=request.getParameter("discharge_date");
			Patient_info patient_info = new Patient_info(null, patient_subject, patient_bedno, patient_name, patient_sex, patient_age, patient_disease, patient_doctor, admission_date, discharge_date);
			PatientController patientController = new PatientController();
			System.out.println(1212121);
			String bed_no=patient_bedno;
			System.out.println(bed_no);
			Bed_info bed_info = new Bed_info(null, bed_no, 1.1, null);
			
			
			boolean addpatient_info = patientController.addpatient_info(patient_info);
			if (addpatient_info) {
				patientController.updataBed(bed_info);
				request.getRequestDispatcher("PatientServlet").forward(request, response);//ת����ҳ��
				
			} else {
				request.getRequestDispatcher("PatientServlet.jsp").forward(request, response);//ת����ҳ��
			}
	}
	}


