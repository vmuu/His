package entity;

public class Doctor_info {
	private Integer doctor_id;//ҽ�����
	private String doctor_name;//ҽ������
	private String doctor_sex;//�Ա�
	private String doctor_title;//ְ��
	private String doctor_job;//ְ��
	private String doctor_subject;//�Ʊ�
	private String doctor_birthday;//��������
	private String job_tiem;//����ʱ��
	public Integer getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(Integer doctor_id) {
		this.doctor_id = doctor_id;
	}
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	public String getDoctor_sex() {
		return doctor_sex;
	}
	public void setDoctor_sex(String doctor_sex) {
		this.doctor_sex = doctor_sex;
	}
	public String getDoctor_title() {
		return doctor_title;
	}
	public void setDoctor_title(String doctor_title) {
		this.doctor_title = doctor_title;
	}
	public String getDoctor_job() {
		return doctor_job;
	}
	public void setDoctor_job(String doctor_job) {
		this.doctor_job = doctor_job;
	}
	public String getDoctor_subject() {
		return doctor_subject;
	}
	public void setDoctor_subject(String doctor_subject) {
		this.doctor_subject = doctor_subject;
	}
	public String getDoctor_birthday() {
		return doctor_birthday;
	}
	public void setDoctor_birthday(String doctor_birthday) {
		this.doctor_birthday = doctor_birthday;
	}
	public String getJob_tiem() {
		return job_tiem;
	}
	public void setJob_tiem(String job_tiem) {
		this.job_tiem = job_tiem;
	}
	public Doctor_info(Integer doctor_id, String doctor_name, String doctor_sex, String doctor_title, String doctor_job,
			String doctor_subject, String doctor_birthday, String job_tiem) {
		super();
		this.doctor_id = doctor_id;
		this.doctor_name = doctor_name;
		this.doctor_sex = doctor_sex;
		this.doctor_title = doctor_title;
		this.doctor_job = doctor_job;
		this.doctor_subject = doctor_subject;
		this.doctor_birthday = doctor_birthday;
		this.job_tiem = job_tiem;
	}
	public Doctor_info() {
		super();
	}
	@Override
	public String toString() {
		return "doctor_info [doctor_id=" + doctor_id + ", doctor_name=" + doctor_name + ", doctor_sex=" + doctor_sex
				+ ", doctor_title=" + doctor_title + ", doctor_job=" + doctor_job + ", doctor_subject=" + doctor_subject
				+ ", doctor_birthday=" + doctor_birthday + ", job_tiem=" + job_tiem + "]";
	}
	
	
	
}
