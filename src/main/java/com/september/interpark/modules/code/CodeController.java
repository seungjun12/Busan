package com.september.interpark.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/code/")
public class CodeController {

	@Autowired /* new 객체 만들기 */
	CodeServiceImpl service;
	

	@RequestMapping(value = "codeList")
	public String codeList(Model model) throws Exception {

		List<Code> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}	
}
