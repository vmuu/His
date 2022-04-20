package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IconCon {

	//医生会诊统计
	@RequestMapping("/DocIcon")
	public String DocIcon(Model model) {
		return "DocIcon";
	}
	
	//政所收费统计
	@RequestMapping("/ProfitIcon")
	public String ProfitIcon(Model model) {
		return "ProfitIcon";
	}
}
