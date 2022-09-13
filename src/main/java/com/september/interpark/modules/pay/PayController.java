package com.september.interpark.modules.pay;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PayController {

	@RequestMapping(value = "/priceSelect", method = RequestMethod.GET)
	public String priceSelectForm(Locale locale, Model model) {
		return "infra/pay/xdmin/priceSelectForm";
	}
	
	@RequestMapping(value = "/delivery", method = RequestMethod.GET)
	public String deliveryForm(Locale locale, Model model) {
		return "infra/pay/xdmin/deliveryForm";
	}
	
	@RequestMapping(value = "/pay", method = RequestMethod.GET)
	public String payForm(Locale locale, Model model) {
		return "infra/pay/xdmin/payForm";
	}
	
	@RequestMapping(value = "/payComplete", method = RequestMethod.GET)
	public String payCompleteForm(Locale locale, Model model) {
		return "infra/pay/xdmin/payCompleteForm";
	}
}
