package com.Controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.LoginInfoMapper;
import com.entity.LoginInfo;

@Controller
public class LoginInfoCon {

	@Resource
	LoginInfoMapper loginInfoMapper;
	
	//������
		@RequestMapping("/LoginInfoMain")
		public String PatientMain(Model model) {
			List<LoginInfo> selectAll = loginInfoMapper.selectAll();
			model.addAttribute("LoginInfo",selectAll);
			System.out.println("12341654");
			return "Patient";
		}
		
		//ɾ��
		@RequestMapping("/LoginInfoDel")
		public String PatientDel(int patientId) {
			int deleteByPrimaryKey = loginInfoMapper.deleteByPrimaryKey(patientId);
			if (deleteByPrimaryKey>0) {
				System.out.println("������Ϣɾ���ɹ�");
				return "redirect:/PatientMain.do";
			}
			return "redirect:/PatientMain.do";
		}
		
}
