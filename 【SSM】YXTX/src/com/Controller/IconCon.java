package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IconCon {

	//ҽ������ͳ��
	@RequestMapping("/DocIcon")
	public String DocIcon(Model model) {
		return "DocIcon";
	}
	
	//�����շ�ͳ��
	@RequestMapping("/ProfitIcon")
	public String ProfitIcon(Model model) {
		return "ProfitIcon";
	}
}
