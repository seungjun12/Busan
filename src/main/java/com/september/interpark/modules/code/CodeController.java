package com.september.interpark.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value="code")
public class CodeController {

	@Autowired /* new 객체 만들기 */
	CodeServiceImpl service;
	

	@RequestMapping(value = "codeList")
	public String codeList(Model model,CodeVo vo) throws Exception {

		System.out.println("vo.getShValue(): "+vo.getShValue());
		System.out.println("vo.getShOption(): "+vo.getShOption());
		System.out.println("vo.getShdelNy(): "+vo.getShdelNy());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}	
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: "+ result);
		
		return "redirect:/code/codeList";
	}
	
	
	
	  @RequestMapping(value = "codeForm")
	  public String codeForm(Model model)throws Exception {
	  
	  List<Code> view = service.viewList(); model.addAttribute("view", view);
	  
	  return "infra/code/xdmin/codeForm"; 
	  }
	  
	  @RequestMapping(value = "codeView")
	  public String codeView(CodeVo vo,Model model)throws Exception {
		  Code result = service.selectOne(vo);
		  model.addAttribute("item", result);
	  return "infra/code/xdmin/codeView"; 
	  }
	 
	
	
}
