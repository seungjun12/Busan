package com.september.interpark.modules.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/pay/")
public class PayController {
	
	@Autowired
	PayServiceImpl service;

	@RequestMapping(value = "priceSelect")
	public String priceSelectForm(@ModelAttribute("vo") PayVo vo , Model model)throws Exception {
		
		Pay item =service.selectOne(vo);
		model.addAttribute("item", item);
		
		
		List<Pay>list = service.selectSeatList(vo);
		model.addAttribute("list", list);
		 
		return "infra/pay/xdmin/priceSelectForm";
	}
	
	@RequestMapping(value = "delivery")
	public String deliveryForm(@ModelAttribute("vo")PayVo vo , Model model)throws Exception {
		
		List<Pay>list =service.selectSeat(vo);
		model.addAttribute("list", list);
		
		Pay item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/pay/xdmin/deliveryForm";
	}
	
	@RequestMapping(value = "pay")
	public String payForm(@ModelAttribute("vo")PayVo vo , Model model)throws Exception {
		
		List<Pay>list =service.selectSeat(vo);
		model.addAttribute("list", list);
		
		Pay item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/pay/xdmin/payForm";
	}
	
	@RequestMapping(value = "payComplete")
	public String payCompleteForm()throws Exception {
		return "infra/pay/xdmin/payCompleteForm";
	}
}
