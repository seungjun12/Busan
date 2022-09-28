package com.september.interpark.modules.main;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	


	
	
}
