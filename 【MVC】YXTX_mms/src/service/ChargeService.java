package service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import entity.pojo.ChargeInfo;
import entity.pojo.Patient;
import mapper.ChargeMapper;
import util.BaseDao;

public class ChargeService implements ChargeMapper{
	Connection conn=null;
	@Override
	public List<ChargeInfo> ChargeList(String Keyword) {
		try {
			String sql=null;
			if(Keyword==null||Keyword.trim().equals("")) {
				sql="SELECT category_sort,patient_bedno,patient_name,toll_project,price,sum_price,toll_time "
						+ "FROM toll_message tm,toll_project tp,patient_info pi,category c,doctor_info d "
						+ "WHERE charge_projects=toll_id AND tm.patient_id=pi.patient_id AND patient_subject=category_id AND patient_doctor=doctor_id";
			}else {
				sql="SELECT category_sort,patient_bedno,patient_name,toll_project,price,sum_price,toll_time "
						+ "FROM toll_message tm,toll_project tp,patient_info pi,category c,doctor_info d "
						+ "WHERE charge_projects=toll_id AND tm.patient_id=pi.patient_id AND patient_subject=category_id AND patient_doctor=doctor_id "
						+ " AND patient_name LIKE '%"+Keyword+"%'";
			}
			conn=(Connection) BaseDao.getConnection();
			PreparedStatement pStr = conn.prepareStatement(sql);
			ResultSet rs = pStr.executeQuery();
			ArrayList<ChargeInfo> list = new ArrayList<ChargeInfo>();
			while (rs.next()) {
				ChargeInfo chargeInfo = new ChargeInfo();
				chargeInfo.setCategory_sort(rs.getString("category_sort"));
				chargeInfo.setPatient_bedno(rs.getString("patient_bedno"));
				chargeInfo.setPatient_name(rs.getString("patient_name"));
				chargeInfo.setToll_project(rs.getString("toll_project"));
				chargeInfo.setPrice(rs.getString("price"));
				chargeInfo.setSum_price(rs.getString("sum_price"));
				chargeInfo.setToll_time(rs.getString("toll_time"));
				list.add(chargeInfo);
			}
			return list;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int ChargeAdd(Patient patient) {
		
		return 0;
	}

	@Override
	public int ChargeDel(Integer id) {
		return 0;
	}

	@Override
	public int ChargeUpd(Patient patient) {
		return 0;
	}
	
}
