package entity.pojo;

import java.io.Serializable;

public class ChargeInfo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String category_sort;
	private String patient_bedno;
	private String patient_name;
	private String toll_project;
	private String price;
	private String sum_price;
	private String toll_time;
	public ChargeInfo() {
		super();
	}
	public ChargeInfo(String category_sort, String patient_bedno, String patient_name, String toll_project,
			String price, String sum_price, String toll_time) {
		super();
		this.category_sort = category_sort;
		this.patient_bedno = patient_bedno;
		this.patient_name = patient_name;
		this.toll_project = toll_project;
		this.price = price;
		this.sum_price = sum_price;
		this.toll_time = toll_time;
	}
	@Override
	public String toString() {
		return "ChargeInfo [category_sort=" + category_sort + ", patient_bedno=" + patient_bedno + ", patient_name="
				+ patient_name + ", toll_project=" + toll_project + ", price=" + price + ", sum_price=" + sum_price
				+ ", toll_time=" + toll_time + "]";
	}
	public String getCategory_sort() {
		return category_sort;
	}
	public void setCategory_sort(String category_sort) {
		this.category_sort = category_sort;
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
	public String getToll_project() {
		return toll_project;
	}
	public void setToll_project(String toll_project) {
		this.toll_project = toll_project;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSum_price() {
		return sum_price;
	}
	public void setSum_price(String sum_price) {
		this.sum_price = sum_price;
	}
	public String getToll_time() {
		return toll_time;
	}
	public void setToll_time(String toll_time) {
		this.toll_time = toll_time;
	}
	
}
