package entity;

public class Toll_project {
	private Integer toll_id;//�շ���Ŀid
	private String toll_prject;//��Ŀ��
	private double toll_price;//��Ŀ�۸�
	public Integer getToll_id() {
		return toll_id;
	}
	public void setToll_id(Integer toll_id) {
		this.toll_id = toll_id;
	}
	public String getToll_prject() {
		return toll_prject;
	}
	public void setToll_prject(String toll_prject) {
		this.toll_prject = toll_prject;
	}
	public double getToll_price() {
		return toll_price;
	}
	public void setToll_price(double toll_price) {
		this.toll_price = toll_price;
	}
	public Toll_project(Integer toll_id, String toll_prject, double toll_price) {
		super();
		this.toll_id = toll_id;
		this.toll_prject = toll_prject;
		this.toll_price = toll_price;
	}
	public Toll_project() {
		super();
	}
	@Override
	public String toString() {
		return "toll_project [toll_id=" + toll_id + ", toll_prject=" + toll_prject + ", toll_price=" + toll_price + "]";
	}
	
	
}
