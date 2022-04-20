package com.Controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.BedInfoMapper;
import com.entity.BedInfo;

@Controller
public class BedInfoCon {

	@Resource
	BedInfoMapper bedInfoMapper;
	
	//������
		@RequestMapping("/BedMain")
		public String PatientMain(Model model) {
			List<BedInfo> selectAll = bedInfoMapper.selectAll();
			model.addAttribute("BedInfo",selectAll);
			System.out.println("12341654");
			return "Bed";
		}
		
		//ɾ��
		@RequestMapping("/BedtDel")
		public String PatientDel(int bedId) {
			int deleteByPrimaryKey = bedInfoMapper.deleteByPrimaryKey(bedId);
			if (deleteByPrimaryKey>0) {
				System.out.println("������Ϣɾ���ɹ�");
				return "redirect:/BedMain.do";
			}
			return "redirect:/BedMain.do";
		}
		
}
