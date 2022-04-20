package entity;
//������Ϣ��
import java.util.Date;

public class Patient_info{
	private String patient_id	;	//���
	private	Integer	patient_subject	;	//�Ʊ�
	private	String	patient_bedno;	//������
	private String	patient_name;	//��������
	private	String	patient_sex;	//�����Ա�
	private	Integer patient_age	;	//��������
	private	String	patient_disease	;	//��״
	private	Integer patient_doctor	;	//����ҽ��
	private	String	admission_date	;	//��Ժ����
	private	String	discharge_date	;	//��Ժ����
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public Integer getPatient_subject() {
		return patient_subject;
	}
	public void setPatient_subject(Integer patient_subject) {
		this.patient_subject = patient_subject;
	}
	public String getPatient_bedno() {
		return patient_bedno;
	}
	public void setPatient_bedno(String patient_bedno) {
		this.patient_bedno = patient_bedno;
	}
	public String getPatient_name() {
		return patient_name;
	}
	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}
	public String getPatient_sex() {
		return patient_sex;
	}
	public void setPatient_sex(String patient_sex) {
		this.patient_sex = patient_sex;
	}
	public Integer getPatient_age() {
		return patient_age;
	}
	public void setPatient_age(Integer patient_age) {
		this.patient_age = patient_age;
	}
	public String getPatient_disease() {
		return patient_disease;
	}
	public void setPatient_disease(String patient_disease) {
		this.patient_disease = patient_disease;
	}
	public Integer getPatient_doctor() {
		return patient_doctor;
	}
	public void setPatient_doctor(Integer patient_doctor) {
		this.patient_doctor = patient_doctor;
	}
	public String getAdmission_date() {
		return admission_date;
	}
	public void setAdmission_date(String admission_date) {
		this.admission_date = admission_date;
	}
	public String getDischarge_date() {
		return discharge_date;
	}
	public void setDischarge_date(String discharge_date) {
		this.discharge_date = discharge_date;
	}
	public Patient_info(String patient_id, Integer patient_subject, String patient_bedno, String patient_name,
			String patient_sex, Integer patient_age, String patient_disease, Integer patient_doctor,
			String admission_date, String discharge_date) {
		super();
		this.patient_id = patient_id;
		this.patient_subject = patient_subject;
		this.patient_bedno = patient_bedno;
		this.patient_name = patient_name;
		this.patient_sex = patient_sex;
		this.patient_age = patient_age;
		this.patient_disease = patient_disease;
		this.patient_doctor = patient_doctor;
		this.admission_date = admission_date;
		this.discharge_date = discharge_date;
	}
	public Patient_info() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Patient_info [patient_id=" + patient_id + ", patient_subject=" + patient_subject + ", patient_bedno="
				+ patient_bedno + ", patient_name=" + patient_name + ", patient_sex=" + patient_sex + ", patient_age="
				+ patient_age + ", patient_disease=" + patient_disease + ", patient_doctor=" + patient_doctor
				+ ", admission_date=" + admission_date + ", discharge_date=" + discharge_date + "]";
	}
	
}
