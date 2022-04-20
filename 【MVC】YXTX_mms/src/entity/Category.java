package entity;

public class Category {
	private Integer category_id;//���ұ��
	private String category_sort;//������
	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
	public String getCategory_sort() {
		return category_sort;
	}
	public void setCategory_sort(String category_sort) {
		this.category_sort = category_sort;
	}
	public Category(Integer category_id, String category_sort) {
		super();
		this.category_id = category_id;
		this.category_sort = category_sort;
	}
	public Category() {
		super();
	}
	@Override
	public String toString() {
		return "category [category_id=" + category_id + ", category_sort=" + category_sort + "]";
	}
	
	
}
