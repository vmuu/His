package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainCon {

	//主界面的方法
	@RequestMapping("/MianT")
	public String MianT(Model model) {
		return "main";
	}
	
	//欢迎界面
	@RequestMapping("/hello")
	public String hello(Model model) {
		return "hello";
	}
}
