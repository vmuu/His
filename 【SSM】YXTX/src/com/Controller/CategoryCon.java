package com.Controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CategoryMapper;
import com.dao.PatientInfoMapper;
import com.entity.Category;
import com.entity.PatientInfo;

@Controller
public class CategoryCon {

	@Resource
	CategoryMapper categoryMapper;
	
	//主界面
		@RequestMapping("/CategoryMain")
		public String PatientMain(Model model) {
			List<Category> selectAll = categoryMapper.selectAll();
			model.addAttribute("Category",selectAll);
			System.out.println("12341654");
			return "Patient";
		}
		
		//删除
		@RequestMapping("/CategoryDel")
		public String PatientDel(int patientId) {
			int deleteByPrimaryKey = categoryMapper.deleteByPrimaryKey(patientId);
			if (deleteByPrimaryKey>0) {
				System.out.println("病人信息删除成功");
				return "redirect:/PatientMain.do";
			}
			return "redirect:/PatientMain.do";
		}
		
}
