package service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import entity.Category;
import entity.Doctor_info;
import mapper.docMapper;
import util.BaseDao;

public class docService implements docMapper {

	
	Connection conn=null;
	
	//查询方法
	@Override
	public List<Doctor_info> getDocList(String doctor_name) {
		try {
			// 输出sql测试\
			String listSQL=null;
			if (doctor_name == null || doctor_name.trim().equals("")) {
				listSQL="SELECT d.doctor_id,d.doctor_name,d.doctor_sex,d.doctor_title,d.doctor_job,c.category_sort,d.doctor_birthday,d.job_tiem FROM doctor_info d,category c WHERE d.doctor_subject=c.category_id ";
			}else {
				listSQL="SELECT d.doctor_id,d.doctor_name,d.doctor_sex,d.doctor_title,d.doctor_job,c.category_sort,d.doctor_birthday,d.job_tiem FROM doctor_info d,category c WHERE d.doctor_subject=c.category_id and d.doctor_name like '%"+doctor_name+"%' OR d.doctor_title like '%"+doctor_name+"%' OR d.doctor_job like '%"+doctor_name+"%' OR c.category_sort like '%"+doctor_name+"%'";
			}
			System.out.println(listSQL);
			// 连接数据库
			conn = (Connection) BaseDao.getConnection();
			PreparedStatement par = (PreparedStatement) conn.prepareStatement(listSQL);
			// 保存结果集
			ResultSet resultset = par.executeQuery();
			ArrayList<Doctor_info> docList = new ArrayList<Doctor_info>();
			while (resultset.next()) {
				// 对应字段取值并赋值给变量
				int doctor_id = resultset.getInt("doctor_id");
				String doctor_name1 = resultset.getString("doctor_name");
				String doctor_sex = resultset.getString("doctor_sex");
				String doctor_title1 = resultset.getString("doctor_title");
				String doctor_job1 = resultset.getString("doctor_job");
				String doctor_subject = resultset.getString("category_sort");
				String doctor_birthday = resultset.getString("doctor_birthday");
				String job_tiem = resultset.getString("job_tiem");
				Doctor_info docInfo = new Doctor_info(doctor_id, doctor_name1, doctor_sex, doctor_title1, doctor_job1, doctor_subject, doctor_birthday, job_tiem);
				System.out.println(docInfo.toString());
				docList.add(docInfo);
			}
			if (docList.size() > 0) {
				return docList;

			}
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		} finally {
			try {
				BaseDao.close(conn);
			} catch (Exception e2) {
				// TODO: handle exception
				e2.printStackTrace();
			}
		}
		return null;
	}
	//查询科别信息
	@Override
	public List<Category> getCategory() {
		try {
			String sql="SELECT *FROM category ";
			conn=(Connection) BaseDao.getConnection();
			PreparedStatement pStr = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = pStr.executeQuery();
			ArrayList<Category> categoryList = new ArrayList<Category>();
			while (rs.next()) {
				Category category = new Category();
				category.setCategory_id(rs.getInt("category_id"));
				category.setCategory_sort(rs.getString("category_sort"));
				categoryList.add(category);
			}
			return categoryList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	//添加
	@Override
	public int addDoc(Doctor_info docInfo) {
		try {
			//定义SQL语句
			String sql="insert into doctor_info( doctor_name, doctor_sex, doctor_title, doctor_job, doctor_subject, doctor_birthday, job_tiem) values(?,?,?,?,?,?,?);";
			//数据库的连接
			Connection conn=(Connection) BaseDao.getConnection();
			//预处理对象
			PreparedStatement pStr = (PreparedStatement) conn.prepareStatement(sql);
			//获取结果集
			pStr.setString(1,docInfo.getDoctor_name());
			pStr.setString(2,docInfo.getDoctor_sex());
			pStr.setString(3,docInfo.getDoctor_title());
			pStr.setString(4,docInfo.getDoctor_job());
			pStr.setString(5,docInfo.getDoctor_subject());
			pStr.setString(6,docInfo.getDoctor_birthday());
			pStr.setString(7,docInfo.getJob_tiem());
			int executeUpdate = pStr.executeUpdate();
			return executeUpdate;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				//关闭链接
				BaseDao.close(conn);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	}
	//修改
	@Override
	public boolean updateById(Doctor_info docInfo) {
		// TODO Auto-generated method stub
		return false;
	}
	//删除
	@Override
	public int delById(Integer doctor_id) {
		System.out.println("doctor_id:"+doctor_id);
		try {
			String sql="DELETE from doctor_info where doctor_id="+doctor_id;
			System.out.println(sql);
			conn=(Connection) BaseDao.getConnection();
			PreparedStatement pst=(PreparedStatement) conn.prepareStatement(sql);
			System.out.println(123);
			int i = pst.executeUpdate();
			if(i>0){
				return i;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return 0;
	}

	
	
}
