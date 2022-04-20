package controller;

import java.util.List;

import entity.Login_info;
import mapper.loginMapper;
import service.loginService;

public class loginController {
	//登录
	public boolean loginCO(String account,String password) {
		loginMapper login=new loginService();
		List<Login_info> list= login.loginSel(account, password);
		if (list.size()>0) {
			return true;
		}
		return false;
	}
}
