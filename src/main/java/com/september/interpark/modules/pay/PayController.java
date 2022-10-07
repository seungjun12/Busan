package com.september.interpark.modules.pay;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/pay/")
public class PayController {

	@RequestMapping(value = "priceSelect")
	public String priceSelectForm()throws Exception {
		return "infra/pay/xdmin/priceSelectForm";
	}
	
	@RequestMapping(value = "delivery")
	public String deliveryForm()throws Exception {
		return "infra/pay/xdmin/deliveryForm";
	}
	
	@RequestMapping(value = "pay")
	public String payForm()throws Exception {
		return "infra/pay/xdmin/payForm";
	}
	
	@RequestMapping(value = "payComplete")
	public String payCompleteForm()throws Exception {
		return "infra/pay/xdmin/payCompleteForm";
	}
}
