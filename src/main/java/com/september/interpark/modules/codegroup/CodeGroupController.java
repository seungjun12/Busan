package com.september.interpark.modules.codegroup;


import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;




@Controller
@RequestMapping(value="codeGroup")
public class CodeGroupController {

	@Autowired /* new 객체 만들기 */
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo")  CodeGroupVo vo , Model model) throws Exception {
		
		System.out.println("vo.getShValue(): " +vo.getShValue());
		System.out.println("vo.getShOption(): " +vo.getShOption()); 
		System.out.println("vo.getShdelNy(): " +vo.getShdelNy()); 
		
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
	
	@RequestMapping(value="codeGroupView")
	public String codeGroupView(CodeGroupVo vo, Model model)throws Exception{
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/codegroup/xdmin/codeGroupView";
	}
	
	
	@RequestMapping(value="codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes)throws Exception{
			service.update(dto);
			return "redirect:/codeGroup/codeGroupList";	
	}
	
	@RequestMapping( value = "codeGroupUele")
	public String codeGroupUele(CodeGroupVo vo, CodeGroup dto,  RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		return "redirect:codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDele")
	public String nationalityDele(CodeGroupVo vo,RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		return "redirect:codeGroup/codeGroupList";
	}
	
	
}