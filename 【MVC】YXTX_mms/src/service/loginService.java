package service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import entity.Login_info;
import mapper.loginMapper;
import util.BaseDao;

public class loginService implements loginMapper  {

	@Override
	public List<Login_info> loginSel(String account, String password) {
		Connection conn=null;
		try { 
			String sql="SELECT * FROM login_info WHERE account='"+account+"' and `password`='"+password+"'";
			System.out.println(sql);
			conn=(Connection)BaseDao.getConnection();
			PreparedStatement pst= (PreparedStatement) conn.prepareStatement(sql);
			//创建结果集
			ResultSet resultSet= pst.executeQuery();
			//创建实例化对象保存结果集
			Login_info logInfo=new Login_info();
			//创建数组保存结果集里的数据
			List<Login_info> list=new ArrayList<Login_info>();
			//将结果集里的数据传添加进实例化对象
			while (resultSet.next()) {
				logInfo.setId(resultSet.getInt("id"));
				logInfo.setAccount(resultSet.getString("account"));
				logInfo.setPassword(resultSet.getString("password"));
				logInfo.setPermissions(resultSet.getInt("permissions"));
			}
			//将实例化对象添加进数组
			System.out.println(logInfo.toString());
			list.add(logInfo);
			//返回数组
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				BaseDao.close(conn);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return null;
	}

}
