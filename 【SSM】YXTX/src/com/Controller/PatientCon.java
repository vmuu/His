package com.Controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.PatientInfoMapper;
import com.entity.PatientInfo;

@Controller
public class PatientCon {

	@Resource
	PatientInfoMapper patientInfoMapper;
	
	//������
	@RequestMapping("/PatientMain")
	public String PatientMain(Model model) {
		List<PatientInfo> PatientInfo = patientInfoMapper.selectAll();
		model.addAttribute("PatientInfo",PatientInfo);
		System.out.println("12341654");
		return "Patient";
	}
	
	//ɾ��
	@RequestMapping("/PatientDel")
	public String PatientDel(int patientId) {
		int deleteByPrimaryKey = patientInfoMapper.deleteByPrimaryKey(patientId);
		if (deleteByPrimaryKey>0) {
			System.out.println("������Ϣɾ���ɹ�");
			return "redirect:/PatientMain.do";
		}
		return "redirect:/PatientMain.do";
	}
	
	//��ת���޸Ľ���
	@RequestMapping("/PatientUpdT")
	public String PatientUpdT(Model model,int patientId) {
		List<PatientInfo> selectByPrimaryKey = patientInfoMapper.selectByPrimaryKey(patientId);
		model.addAttribute("selectByPrimaryKey",selectByPrimaryKey);
		return "UpdPatient";
	}
	
	//�޸�
	@RequestMapping("/PatientUpd")
	public String PatientUpd(PatientInfo info) {
		int updateByPrimaryKey = patientInfoMapper.updateByPrimaryKey(info);
		if (updateByPrimaryKey>0) {
			System.out.println("������Ϣ�޸ĳɹ�");
			return "redirect:/PatientMain.do";
		}
		return "redirect:/PatientMain.do";
	}
	
}
