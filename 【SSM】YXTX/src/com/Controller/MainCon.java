package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainCon {

	//������ķ���
	@RequestMapping("/MianT")
	public String MianT(Model model) {
		return "main";
	}
	
	//��ӭ����
	@RequestMapping("/hello")
	public String hello(Model model) {
		return "hello";
	}
}
