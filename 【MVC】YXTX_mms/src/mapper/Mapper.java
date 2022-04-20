package mapper;

import java.util.List;


import entity.Bed_info;
import entity.Category;
import entity.Doctor_info;
import entity.Patient_info;
import entity.pojo.Patient;


public interface Mapper {
			//查询的接口
			List<Patient> SelList(String Keyword);
			List<Category> SelCategory();
			List<Doctor_info> SelDoctor();
			List<Bed_info> SelBed();
			
			//添加
			int addPatient_info(Patient_info patient_info);
			int delById(Integer patient_id);
			
			//修改
			int updateById(Bed_info bed_info);
			int updateById1(Bed_info bed_info);
			//修改病人表
			int updatePatient(Patient_info patient_info);
	/*
	 * //��� int addCourse(Moot moot); //�޸� int updateById(Moot moot);
	 * 
	 * //ɾ�� int delById(Integer courseID);
	 */
}
