package com.september.interpark.modules.admin;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	


	
	@RequestMapping(value = "admin/login")
	public String login()throws Exception{
		return "infra/admin/xdmin/login";
	}
	
	@RequestMapping(value = "admin/home")
	public String home()throws Exception{
		return "infra/admin/xdmin/home";
	}
	
	

}
