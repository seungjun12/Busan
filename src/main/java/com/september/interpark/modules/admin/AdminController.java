package com.september.interpark.modules.admin;


import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdminController {
	
	@RequestMapping(value = "/")
	public String starts()throws Exception{
		return "infra/admin/xdmin/start";
	}
	
	@RequestMapping(value = "/admin/login")
	public String login()throws Exception{
		return "infra/admin/xdmin/login";
	}
	
	@RequestMapping(value = "/admin/home")
	public String home()throws Exception{
		return "infra/admin/xdmin/home";
	}
	
	//유저 로그아웃 하기
	@ResponseBody
	@RequestMapping(value = "/admin/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		/* UtilCookie.deleteCookie(); */
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	

}
