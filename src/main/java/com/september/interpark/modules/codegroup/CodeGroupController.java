package com.september.interpark.modules.codegroup;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;




@Controller
public class CodeGroupController {

	@Autowired /* new 객체 만들기 */
	CodeGroupServiceImpl service;
	
	public void setSearchAndPaging(CodeGroupVo vo)throws Exception{

		vo.setShdelNy(vo.getShdelNy() == null ? 1 :vo.getShdelNy());
		/* vo.setShOption(vo.getShOption() == null ? 2 : vo.getShOption()); */
		
		vo.setParamsPaging(service.selectOneCount(vo));		
	}

	@RequestMapping(value = "codeGroup/codeGroupList")
	public String codeGroupList(@ModelAttribute("vo")  CodeGroupVo vo , Model model) throws Exception {
		
		System.out.println("vo.getShValue(): " +vo.getShValue());
		System.out.println("vo.getShOption(): " +vo.getShOption()); 
		System.out.println("vo.getShdelNy(): " +vo.getShdelNy()); 
		
		setSearchAndPaging(vo);
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}	
	
	@RequestMapping(value = "codeGroup/codeGroupForm")
	public String codeGroupForm() throws Exception {
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroup/codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo,CodeGroup dto , RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setCcgseq(dto.getCcgseq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/codeGroup/codeGroupView";
	}
	
	@RequestMapping(value="codeGroup/codeGroupView")
	public String codeGroupView(@ModelAttribute("vo") CodeGroupVo vo, CodeGroup dto, Model model)throws Exception{
	
		
			CodeGroup item = service.selectOne(vo);
			model.addAttribute("item", item);
			
		
		return "infra/codegroup/xdmin/codeGroupView";
	}
	
	
	@RequestMapping(value="codeGroup/codeGroupUpdt")
	public String codeGroupUpdt(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes)throws Exception{
			service.update(dto);
			return "redirect:/codeGroup/codeGroupList";	
	}
	
	@RequestMapping( value = "codeGroup/codeGroupUele")
	public String codeGroupUele(CodeGroupVo vo, CodeGroup dto,  RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroup/codeGroupDele")
	public String nationalityDele(CodeGroupVo vo,RedirectAttributes redirectAttributes) throws Exception{
		service.delete(vo);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	
}