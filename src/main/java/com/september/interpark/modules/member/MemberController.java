package com.september.interpark.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.september.interpark.modules.codegroup.CodeGroup;

@Controller
@RequestMapping(value="member")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="memberList")
	public String memberList(Model model, @ModelAttribute("vo") MemberVo vo)throws Exception{
		
		System.out.println("vo.getShValue(): "+vo.getShValue());
		System.out.println("vo.getShOption(): "+vo.getShOption());
		System.out.println("vo.getShdelNy(): " + vo.getShdelNy());
		
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
	public String memberView(MemberVo vo,Model model) throws Exception {
		Member result=service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/member/xdmin/memberView";
	}
	
	
}
