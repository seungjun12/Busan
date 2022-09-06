package com.september.interpark.modules.codegroup;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value="codeGroup")
public class CodeGruoupController {

	@Autowired /* new 객체 만들기 */
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model,CodeGroupVo vo) throws Exception {
		
		System.out.println("vo.getShValue(): " +vo.getShValue());
		System.out.println("vo.getshOption(): " +vo.getShOption()); 
		System.out.println("vo.getshdelNy(): " +vo.getShdelNy()); 
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}	
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm() throws Exception {
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: "+ result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
}