package service;

import com.mysql.jdbc.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Bed_info;
import entity.Category;
import entity.Doctor_info;
import entity.Patient_info;
import entity.pojo.Patient;
import mapper.Mapper;
import util.BaseDao;

public class PatientService implements Mapper {
	Connection conn=null;
	//查询
	@Override
	public List<Patient> SelList(String Keyword) {
		try {
			String sql=null;
			if(Keyword==null||Keyword.trim().equals("")) {
				sql="SELECT patient_id,  D.doctor_id,  C.category_sort,B.bed_no,"
						+ "P.patient_name,p.patient_sex,"
						+ "P.patient_age,P.patient_disease,"
						+ "D.doctor_name,P.admission_date,"
						+ "P.discharge_date FROM patient_info P,"
						+ "doctor_info D,category C,bed_info B "
						+ "WHERE C.category_id=D.doctor_subject "
						+ " and D.doctor_id=P.patient_doctor and "
						+ "B.bed_id=P.patient_bedno ";
			}else {
				sql="SELECT patient_id,  D.doctor_id,  C.category_sort,B.bed_no,"
						+ "P.patient_name,p.patient_sex,"
						+ "P.patient_age,P.patient_disease,"
						+ "D.doctor_name,P.admission_date,"
						+ "P.discharge_date FROM patient_info P,"
						+ "doctor_info D,category C,bed_info B "
						+ "WHERE C.category_id=D.doctor_subject "
						+ " and D.doctor_id=P.patient_doctor and "
						+ "B.bed_id=P.patient_bedno  and P.patient_name like'%"+Keyword+"%'";
	
			}
			conn=(Connection) BaseDao.getConnection();
			PreparedStatement pStr = conn.prepareStatement(sql);
			ResultSet rs = pStr.executeQuery();
			ArrayList<Patient> PatientList = new ArrayList<Patient>();
			while (rs.next()) {
				Patient patient = new Patient();
				patient.setPatient_id(rs.getInt("patient_id"));
				patient.setDoctor_id(rs.getInt("doctor_id"));
				patient.setCategory_sort(rs.getString("category_sort"));
				patient.setBed_no(rs.getInt("bed_no"));
				patient.setPatient_name(rs.getString("patient_name"));
				patient.setPatient_sex(rs.getString("patient_sex"));
				patient.setPatient_age(rs.getInt("patient_age"));
				patient.setPatient_disease(rs.getString("patient_disease"));
				patient.setDoctor_name(rs.getString("doctor_name"));
				patient.setAdmission_date(rs.getDate("admission_date"));
				patient.setDischarge_date(rs.getDate("discharge_date"));
				PatientList.add(patient);
			}
			return PatientList;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Category> SelCategory() {
		try {
			String sql="SELECT *FROM category ";
			conn=(Connection) BaseDao.getConnection();
			PreparedStatement pStr = conn.prepareStatement(sql);
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
	public List<Doctor_info> SelDoctor() {
		try {
			String sql="SELECT *FROM doctor_info ";
			conn=(Connection) BaseDao.getConnection();
			PreparedStatement pStr = conn.prepareStatement(sql);
			ResultSet rs = pStr.executeQuery();
			ArrayList<Doctor_info> doctorList = new ArrayList<Doctor_info>();
			while (rs.next()) {
				Doctor_info doctor_info = new Doctor_info();
				doctor_info.setDoctor_id(rs.getInt("doctor_id"));
				doctor_info.setDoctor_name(rs.getString("doctor_name"));
				doctorList.add(doctor_info);
			}
			return doctorList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<Bed_info> SelBed() {
		try {
			String sql="SELECT *FROM bed_info ";
			conn=(Connection) BaseDao.getConnection();
			PreparedStatement pStr = conn.prepareStatement(sql);
			ResultSet rs = pStr.executeQuery();
			ArrayList<Bed_info> BedList = new ArrayList<Bed_info>();
			while (rs.next()) {
				Bed_info bed_info = new Bed_info();
				bed_info.setBed_id(rs.getInt("bed_id"));
				bed_info.setBed_no(rs.getString("bed_no"));
				bed_info.setBed_price(rs.getDouble("bed_price"));
				bed_info.setBed_state(rs.getInt("bed_state"));
				BedList.add(bed_info);
			}
			return BedList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
//添加
	@Override
	public int addPatient_info(Patient_info patient_info) {
		try {
			//定义SQL语句
			String sql="insert into patient_info(patient_subject, patient_bedno, patient_name, patient_sex, patient_age, patient_disease, patient_doctor, admission_date, discharge_date) values(?,?,?,?,?,?,?,?,?)";
			//数据库的连接
			conn=(Connection) BaseDao.getConnection();
			//预处理对象
			PreparedStatement pStr = conn.prepareStatement(sql);
			//获取结果集
			pStr.setInt(1, patient_info.getPatient_subject());
			pStr.setString(2, patient_info.getPatient_bedno());
			pStr.setString(3, patient_info.getPatient_name());
			pStr.setString(4, patient_info.getPatient_sex());
			pStr.setInt(5, patient_info.getPatient_age());
			pStr.setString(6, patient_info.getPatient_disease());
			pStr.setInt(7, patient_info.getPatient_doctor());
			pStr.setString(8, patient_info.getAdmission_date());
			pStr.setString(9, patient_info.getDischarge_date());
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
//删除
	@Override
	public int delById(Integer patient_id) {
		String sql="Delete from patient_info where patient_id ="+patient_id;
		try {
			conn=(Connection) BaseDao.getConnection();
			PreparedStatement pst=(PreparedStatement) conn.prepareStatement(sql);
			System.out.println(sql);
			int i = pst.executeUpdate();
			if(i>0){
				System.out.println("删除成功");
				return i;
			}
		} catch (Exception e) {
			e.printStackTrace();
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

	@Override
	public int updateById(Bed_info bed_info) {
		try {
			String sql="update bed_info set bed_state=1 where bed_id=?";
			System.out.println(sql);
			conn=(Connection) BaseDao.getConnection();
			PreparedStatement pst=(PreparedStatement) conn.prepareStatement(sql);
//			pst.setInt(1, bed_info.getBed_state());
			pst.setString(1,bed_info.getBed_no() );
			int result = pst.executeUpdate();
			if (result>0) {
				System.out.println(sql);
				return result;
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
	@Override
	public int updateById1(Bed_info bed_info) {
		try {
			String sql="update bed_info set bed_state=0 where bed_no=?";
			System.out.println(sql);
			conn=(Connection) BaseDao.getConnection();
			PreparedStatement pst=(PreparedStatement) conn.prepareStatement(sql);
//			pst.setInt(1, bed_info.getBed_state());
			pst.setString(1,bed_info.getBed_no() );
			int result = pst.executeUpdate();
			if (result>0) {
				System.out.println(sql);
				return result;
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

	@Override
	public int updatePatient(Patient_info patient_info) {
		try {
			String sql="update Patient_info set patient_name=?,patient_sex=?,patient_age=?,patient_disease=?,admission_date=? ,discharge_date=?  where patient_id=?";
			conn=(Connection) BaseDao.getConnection();
			PreparedStatement pst=(PreparedStatement) conn.prepareStatement(sql);
			
			pst.setString(1, patient_info.getPatient_name());
			pst.setString(2, patient_info.getPatient_sex());
			pst.setInt(3, patient_info.getPatient_age());
			pst.setString(4, patient_info.getPatient_disease());
			pst.setString(5, patient_info.getAdmission_date());
			pst.setString(6, patient_info.getDischarge_date());
			pst.setString(7, patient_info.getPatient_id());
			int result = pst.executeUpdate();
			if (result>0) {
				System.out.println(sql);
				return result;
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
