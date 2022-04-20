package com.Controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.DoctorInfoMapper;
import com.dao.PatientInfoMapper;
import com.entity.DoctorInfo;
import com.entity.PatientInfo;

@Controller
public class DoctorInfoCon {

	@Resource
	DoctorInfoMapper doctorInfoMapper;
	
		//������
		@RequestMapping("/DoctorInfoMain")
		public String PatientMain(Model model) {
			List<DoctorInfo> selectAll = doctorInfoMapper.selectAll();
			model.addAttribute("DoctorInfo",selectAll);
			System.out.println("12341654");
			return "doctorList";
		}
		
		//ɾ��
		@RequestMapping("/DoctorInfoDel")
		public String PatientDel(int doctorId) {
			int deleteByPrimaryKey = doctorInfoMapper.deleteByPrimaryKey(doctorId);
			if (deleteByPrimaryKey>0) {
				System.out.println("������Ϣɾ���ɹ�");
				return "redirect:/DoctorInfoMain.do";
			}
			return "redirect:/DoctorInfoMain.do";
		}
		
		//��ת���޸Ľ���
		@RequestMapping("/DoctorInfoUpdT")
		public String PatientUpdT(Model model,int doctorId) {
			 List<DoctorInfo> selectByPrimaryKey = doctorInfoMapper.selectByPrimaryKey(doctorId);
			model.addAttribute("DoctorInfo",selectByPrimaryKey);
			return "updDoctor";
		}
		
		//�޸�
		@RequestMapping("/DoctorInfoUpd")
		public String PatientUpd(DoctorInfo doctorInfo) {
			int updateByPrimaryKey = doctorInfoMapper.updateByPrimaryKey(doctorInfo);
			if (updateByPrimaryKey>0) {
				System.out.println("ҽ����Ϣ�޸ĳɹ�");
				return "redirect:/DoctorInfoMain.do";
			}
			return "redirect:/DoctorInfoUpdT.do";
		}
		
		//��ת����ӽ���
		@RequestMapping("/DoctorInfoAddT")
		public String DoctorInfoAddT(Model model) {
			return "addDoctor";
		}
		
		//���
		@RequestMapping("/DoctorInfoAdd")
		public String DoctorInfoAdd(DoctorInfo doctorInfo) {
			int insert = doctorInfoMapper.insert(doctorInfo);
			if (insert>0) {
				System.out.println("ҽ����Ϣ��ӳɹ�");
				return "redirect:/DoctorInfoMain.do";
			}
			return "redirect:/DoctorInfoUpdT.do";
		}
}
