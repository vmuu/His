package controller;

import java.util.List;

import entity.Category;
import entity.Doctor_info;
import mapper.docMapper;
import service.docService;

public class docController {
	//查询所有
	public static List<Doctor_info> getDocList(String doctor_name){
		docMapper mapper=new docService();
		//传入查询数据
		if (doctor_name==null||doctor_name.trim().equals("")) {
			doctor_name=null;
		}
		List<Doctor_info> doc=mapper.getDocList(doctor_name);
		return doc;
	}
	
	//查询所有科别
	public List<Category> selCategory() {
		docMapper mapper=new docService();
		List<Category> list=mapper.getCategory();
		return list;
	}
	
	//删除
	public boolean deletDocInfo(int docID) {
		docMapper mapper=new docService();
		int updateInfo= mapper.delById(docID);
			if (updateInfo>0) {
				return true;
			}
		return false;
	}
	//添加
	public boolean  addDocInfo(Doctor_info doctor_info) {
		docMapper mapper=new docService();
		 int addPatient_info = mapper.addDoc(doctor_info);
		if (addPatient_info>=1) {
			return true;
		}
		return false;
	}
}
