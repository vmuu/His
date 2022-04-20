package entity;

public class Bed_info {
	private Integer bed_id;//���
	private String bed_no;//������
	private double bed_price;//��λ�۸�
	private Integer bed_state;//����ʹ��״̬��1Ϊʹ�ã�0Ϊδʹ��
	public Integer getBed_id() {
		return bed_id;
	}
	public void setBed_id(Integer bed_id) {
		this.bed_id = bed_id;
	}
	public String getBed_no() {
		return bed_no;
	}
	public void setBed_no(String bed_no) {
		this.bed_no = bed_no;
	}
	public double getBed_price() {
		return bed_price;
	}
	public void setBed_price(double bed_price) {
		this.bed_price = bed_price;
	}
	public Integer getBed_state() {
		return bed_state;
	}
	public void setBed_state(Integer bed_state) {
		this.bed_state = bed_state;
	}
	public Bed_info(Integer bed_id, String bed_no, double bed_price, Integer bed_state) {
		super();
		this.bed_id = bed_id;
		this.bed_no = bed_no;
		this.bed_price = bed_price;
		this.bed_state = bed_state;
	}
	public Bed_info() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "bed_info [bed_id=" + bed_id + ", bed_no=" + bed_no + ", bed_price=" + bed_price + ", bed_state="
				+ bed_state + "]";
	}

	
}
