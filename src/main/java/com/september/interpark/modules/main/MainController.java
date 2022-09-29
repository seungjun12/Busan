package com.september.interpark.modules.main;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/main/")
public class MainController {
	
	@RequestMapping(value = "index")
	public String indexForm()throws Exception {
		return "infra/main/xdmin/indexForm";
	}
	
	@RequestMapping(value = "gameChoice")
	public String gameChoiceForm()throws Exception {
		return "infra/main/xdmin/gameChoiceForm";
	}
	
	@RequestMapping(value = "teamChoice")
	public String teamChoice()throws Exception{
		return "infra/main/xdmin/teamChoiceForm";
	}
	


	
	
}
