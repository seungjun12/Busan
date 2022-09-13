package com.september.interpark.modules.main;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexForm(Locale locale, Model model) {
		return "infra/main/xdmin/indexForm";
	}
	
	@RequestMapping(value = "/gameChoice", method = RequestMethod.GET)
	public String gameChoiceForm(Locale locale, Model model) {
		return "infra/main/xdmin/gameChoiceForm";
	}
	
	@RequestMapping(value = "/teamChoice", method = RequestMethod.GET)
	public String teamChoiceForm(Locale locale, Model model) {
		return "infra/main/xdmin/teamChoiceForm";
	}
	
	@RequestMapping(value = "/seatChoice", method = RequestMethod.GET)
	public String seatChoiceForm(Locale locale, Model model) {
		return "infra/main/xdmin/seatChoiceForm";
	}

	
	
}
