package mapper;

import java.util.List;

import entity.Category;
import entity.Doctor_info;


public interface docMapper {
		//模糊查询
		List<Doctor_info> getDocList(String doctor_name);
		//科别查询
		List<Category> getCategory();
		//添加
		int addDoc(Doctor_info docInfo);
		//修改
		boolean updateById(Doctor_info docInfo);
		//删除
		int delById(Integer doctor_id);
}
