package controller;


import java.util.List;


import entity.Bed_info;
import entity.Category;
import entity.Doctor_info;
import entity.Patient_info;
import entity.pojo.Patient;
import mapper.Mapper;
import service.PatientService;


public class PatientController {
	Mapper mapper=new PatientService();
	//调用病人信息查询页面查询
public List<Patient> SelList(String Keyword) {
		List<Patient> PatientList= mapper.SelList(Keyword);
		return PatientList;
	}
public List<Category> SelCategory() {
	List<Category> selCategory = mapper.SelCategory();
	return selCategory;
	
}

public List<Doctor_info> SelDoctor() {
	List<Doctor_info> selDoctorList = mapper.SelDoctor();
	return selDoctorList;
	
}

public List<Bed_info> SelBed() {
	List<Bed_info> selBedList = mapper.SelBed();
	return selBedList;
}

//添加数据
public boolean  addpatient_info(Patient_info patient_info) {
	 int addPatient_info = mapper.addPatient_info(patient_info);
	if (addPatient_info>=1) {
		return true;
	}
	return false;
}
//删除数据
public boolean DelPatient(Integer patient_id ) {
	int delById = mapper.delById(patient_id);
	if (delById>0) {
		return true;
	}
	return false;
}
//修改病床号
public boolean updataBed(Bed_info patient_bedno) {
	int updataresult = mapper.updateById(patient_bedno);
	if (updataresult > 0) {
		return true;
	}
	return false;
}
public boolean updataBedDel(Bed_info patient_bedno) {
	int updataresult = mapper.updateById1(patient_bedno);
	if (updataresult > 0) {
		return true;
	}
	return false;
}
public boolean updataPatient(Patient_info patient_info) {
	int updataresult = mapper.updatePatient(patient_info);
	if (updataresult > 0) {
		return true;
	}
	return false;
}

}
