package entity;

public class Login_info {
	Integer id;//���
	String account;//�˻�
	String password;//����
	Integer permissions;//Ȩ�ޣ�1�ǹ���Ա��2����ͨҽ��
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getPermissions() {
		return permissions;
	}
	public void setPermissions(Integer permissions) {
		this.permissions = permissions;
	}
	public Login_info(Integer id, String account, String password, Integer permissions) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
		this.permissions = permissions;
	}
	public Login_info() {
		super();
	}
	@Override
	public String toString() {
		return "login_info [id=" + id + ", account=" + account + ", password=" + password + ", permissions="
				+ permissions + "]";
	}
	
	
}
