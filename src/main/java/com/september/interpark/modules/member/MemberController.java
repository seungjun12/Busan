package com.september.interpark.modules.member;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping(value="member")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo , Model model)throws Exception{
		
		System.out.println("vo.getShValue(): "+vo.getShValue());
		System.out.println("vo.getShOption(): "+vo.getShOption());
		System.out.println("vo.getShdelNy(): " + vo.getShdelNy());
		
		vo.setShdelNy(vo.getShdelNy() == null ? 1 : vo.getShdelNy());
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value = "memberForm")
	public String memberForm() throws Exception{
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "memberInst")
	public String memberInst(Member dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: "+ result);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo,Model model) throws Exception {
		Member item=service.selectOne(vo);
		model.addAttribute("item", item);
		System.out.println("controller item" + item);
		return "infra/member/xdmin/memberView";
	}
	
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo,Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		return "redirect:member/memberList";
	}
	
	@RequestMapping(value = "memberUele")
	public String memberUele(MemberVo vo , Member dto , RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		return "redirect:member/memberList";
	}
	
	
	
	
	
}
