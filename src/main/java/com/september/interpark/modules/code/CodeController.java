package com.september.interpark.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping(value="code")
public class CodeController {

	@Autowired /* new 객체 만들기 */
	CodeServiceImpl service;
	

	@RequestMapping(value = "codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo , Model model) throws Exception {

		System.out.println("vo.getShValue(): "+vo.getShValue());
		System.out.println("vo.getShOption(): "+vo.getShOption());
		System.out.println("vo.getShdelNy(): "+vo.getShdelNy());
		
		vo.setShdelNy(vo.getShdelNy() == null ? 1 : vo.getShdelNy());
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}	
	
	@RequestMapping(value = "codeForm")
	public String codeForm(Model model)throws Exception {
	  
	List<Code> view = service.viewList(); model.addAttribute("view", view);
	  
	return "infra/code/xdmin/codeForm"; 
	}
	  
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: "+ result);
		
		return "redirect:/code/codeList";
	}

	  
	@RequestMapping(value = "codeView")
	public String codeView(@ModelAttribute("vo") CodeVo vo,Code dto,Model model)throws Exception {
		Code item = service.selectOne(vo);
		model.addAttribute("item", item);
		System.out.println("controller item: " + item);
		return "infra/code/xdmin/codeView"; 
	  }
	  
	  @RequestMapping(value = "codeUpdt")
	  public String codeUpdt(CodeVo vo , Code dto, RedirectAttributes redirectAttributes)throws Exception{
		  service.update(dto);
		  return "redirect:/code/codeList";
	  }
	  
	  @RequestMapping(value = "codeUele")
	  public String codeUele(CodeVo vo , Code dto , RedirectAttributes redirectAttributes)throws Exception {
		  service.uelete(dto);
		  return "redirect:/code/codeList";
	  }
	  
	  @RequestMapping(value = "codeDele")
	  public String codeDele(CodeVo vo , Code dto , RedirectAttributes redirectAttributes)throws Exception {
		  service.delete(vo);
		  return "redirect:/code/codeList";
	  }
}
