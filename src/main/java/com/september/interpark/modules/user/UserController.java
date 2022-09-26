package com.september.interpark.modules.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	@RequestMapping(value = "user/login")
	public String login()throws Exception{
		return "infra/user/xdmin/loginForm";
	}
}
