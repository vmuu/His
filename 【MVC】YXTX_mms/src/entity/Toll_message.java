package entity;

public class Toll_message {
	//�շ���Ϣ��
	Integer id;//���id
	Integer patient_id;//���˱��
	Integer change_projects;//�շѱ��
	Integer price;//����
	Integer sum_price;//���
	String toll_time;//�շ�����
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(Integer patient_id) {
		this.patient_id = patient_id;
	}
	public Integer getChange_projects() {
		return change_projects;
	}
	public void setChange_projects(Integer change_projects) {
		this.change_projects = change_projects;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getSum_price() {
		return sum_price;
	}
	public void setSum_price(Integer sum_price) {
		this.sum_price = sum_price;
	}
	public String getToll_time() {
		return toll_time;
	}
	public void setToll_time(String toll_time) {
		this.toll_time = toll_time;
	}
	public Toll_message(Integer id, Integer patient_id, Integer change_projects, Integer price, Integer sum_price,
			String toll_time) {
		super();
		this.id = id;
		this.patient_id = patient_id;
		this.change_projects = change_projects;
		this.price = price;
		this.sum_price = sum_price;
		this.toll_time = toll_time;
	}
	public Toll_message() {
		super();
	}
	@Override
	public String toString() {
		return "toll_message [id=" + id + ", patient_id=" + patient_id + ", change_projects=" + change_projects
				+ ", price=" + price + ", sum_price=" + sum_price + ", toll_time=" + toll_time + "]";
	}
	
	
}
