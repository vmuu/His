package com.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginCon {

	@RequestMapping("/login")
	public String Login(Model model) {
		return "Login";
	}
}
