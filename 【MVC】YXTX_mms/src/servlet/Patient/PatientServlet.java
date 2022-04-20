package servlet.Patient;

import java.io.IOException;
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
import entity.pojo.Patient;

@WebServlet("/PatientServlet")
public class PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public PatientServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		PatientController patientController = new PatientController();
		//��ҳ���ȡ����
		 String Keyword = request.getParameter("Patient"); 
		
		List<Patient> PatientList = patientController.SelList(Keyword);
		//��ȡsession
		HttpSession session3 = request.getSession();
		//�����ݵļ��ϴ���session
		session3.setAttribute("PatientList", PatientList);
//		PatientController patientController = new PatientController();
		List<Category> categoryList = patientController.SelCategory();
		List<Doctor_info> DoctorList = patientController.SelDoctor();
		List<Bed_info> selBedList = patientController.SelBed();
		HttpSession session = request.getSession();
		HttpSession session1 = request.getSession();
		HttpSession session2 = request.getSession();
		session.setAttribute("DoctorList", DoctorList);
		session1.setAttribute("categoryList", categoryList);
		session2.setAttribute("selBedList", selBedList);
	if(PatientList.size()==0) {
		JOptionPane.showMessageDialog(null, "û�иò��ˣ�", "��Ϣ����", JOptionPane.ERROR_MESSAGE);
	}
		//��ȡҳ�������
		request.getRequestDispatcher("Patient.jsp").forward(request, response);
		
		
	}

}
