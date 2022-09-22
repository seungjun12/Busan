package com.september.interpark.modules.user;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "user")
public class UserController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String indexForm(Locale locale, Model model) {
		return "infra/user/xdmin/loginForm";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerForm(Locale locale, Model model) {
		return "infra/user/xdmin/registerForm";
	}
	
	@RequestMapping(value = "/memberView", method = RequestMethod.GET)
	public String memberViewForm(Locale locale, Model model) {
		return "infra/user/xdmin/memberViewForm";
	}	
	
	@RequestMapping(value = "/informationMod", method = RequestMethod.GET)
	public String informationMod(Locale locale, Model model) {
		return "infra/user/xdmin/informationMod";
	}
	
	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public String findIdForm(Locale locale, Model model) {
		return "infra/user/xdmin/findIdForm";
	}
	
	@RequestMapping(value = "/findIdResult", method = RequestMethod.GET)
	public String findIdFormResult(Locale locale, Model model) {
		return "infra/user/xdmin/findIdFormResult";
	}
	
	@RequestMapping(value = "/memberCheck", method = RequestMethod.GET)
	public String memberCheckForm(Locale locale, Model model) {
		return "infra/user/xdmin/memberCheckForm";
	}
	
	@RequestMapping(value = "/pwdMod", method = RequestMethod.GET)
	public String pwdModForm(Locale locale, Model model) {
		return "infra/user/xdmin/pwdModForm";
	}
	
}
