package mapper;

import java.util.List;

import entity.Login_info;

public interface loginMapper {
	//登录
	List<Login_info> loginSel(String account,String password);
}
