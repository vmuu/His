package entity.pojo;

import java.util.Date;

public class Patient {
	private Integer patient_id;//���ұ��
	private Integer doctor_id;//ҽ�����
	private String category_sort;//������
	private Integer bed_no;//������
	private String	patient_name;	//��������
	private	String	patient_sex;	//�����Ա�
	private	Integer patient_age	;	//��������
	private	String	patient_disease	;	//��״
	private	String doctor_name	;	//����ҽ��
	private	Date	admission_date	;	//��Ժ����
	private	Date	discharge_date	;	//��Ժ����
	public Integer getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(Integer patient_id) {
		this.patient_id = patient_id;
	}
	public Integer getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(Integer doctor_id) {
		this.doctor_id = doctor_id;
	}
	public String getCategory_sort() {
		return category_sort;
	}
	public void setCategory_sort(String category_sort) {
		this.category_sort = category_sort;
	}
	public Integer getBed_no() {
		return bed_no;
	}
	public void setBed_no(Integer bed_no) {
		this.bed_no = bed_no;
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
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	public Date getAdmission_date() {
		return admission_date;
	}
	public void setAdmission_date(Date admission_date) {
		this.admission_date = admission_date;
	}
	public Date getDischarge_date() {
		return discharge_date;
	}
	public void setDischarge_date(Date discharge_date) {
		this.discharge_date = discharge_date;
	}
	public Patient(Integer patient_id, Integer doctor_id, String category_sort, Integer bed_no, String patient_name,
			String patient_sex, Integer patient_age, String patient_disease, String doctor_name, Date admission_date,
			Date discharge_date) {
		super();
		this.patient_id = patient_id;
		this.doctor_id = doctor_id;
		this.category_sort = category_sort;
		this.bed_no = bed_no;
		this.patient_name = patient_name;
		this.patient_sex = patient_sex;
		this.patient_age = patient_age;
		this.patient_disease = patient_disease;
		this.doctor_name = doctor_name;
		this.admission_date = admission_date;
		this.discharge_date = discharge_date;
	}
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Patient [patient_id=" + patient_id + ", doctor_id=" + doctor_id + ", category_sort=" + category_sort
				+ ", bed_no=" + bed_no + ", patient_name=" + patient_name + ", patient_sex=" + patient_sex
				+ ", patient_age=" + patient_age + ", patient_disease=" + patient_disease + ", doctor_name="
				+ doctor_name + ", admission_date=" + admission_date + ", discharge_date=" + discharge_date + "]";
	}
	

	
	
}
