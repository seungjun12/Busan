package com.september.interpark.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.september.interpark.common.constants.Constants;


@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="member/memberList")
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
	
	@RequestMapping(value = "member/memberForm")
	public String memberForm() throws Exception{
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "member/memberInst")
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "member/memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo,Model model) throws Exception {
		Member item=service.selectOne(vo);
		model.addAttribute("item", item);
		System.out.println("controller item" + item);
		return "infra/member/xdmin/memberView";
	}
	
	@RequestMapping(value = "member/memberUpdt")
	public String memberUpdt(MemberVo vo,Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "member/memberUele")
	public String memberUele(MemberVo vo , Member dto , RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "member/memberDele")
	public String memberDele(MemberVo vo , RedirectAttributes redirectAttributes)throws Exception {
		service.delete(vo);
		return "redirect:/member/memberList";
	}

	@ResponseBody
	@RequestMapping(value = "member/checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneIdCheck(dto);
		
		System.out.println("controller result :" + result);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}	
	
	@RequestMapping(value = "member/register")
	public String registerForm()throws Exception{
		return "infra/member/xdmin/registerForm";
	}
	
	@RequestMapping(value = "member/memberRegister")
	public String memberRegister(Member dto)throws Exception{
		service.register(dto);
		return "redirect:/main/index";
	}
	
	@RequestMapping(value = "member/login")
	public String login()throws Exception{
		return "infra/member/xdmin/loginForm";
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.selectOneId(dto);

		if (rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {
				
				/*
				 * if(dto.getAutoLogin() == true) {
				 * UtilCookie.createCookie(Constants.COOKIE_NAME_SEQ, rtMember2.getIfmmSeq(),
				 * Constants.COOKIE_DOMAIN, Constants.COOKIE_PATH, Constants.COOKIE_MAXAGE); }
				 * else { // by pass }
				 */
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getSeq());
				httpSession.setAttribute("sessId", rtMember2.getId());
				httpSession.setAttribute("sessName", rtMember2.getName());

				/*
				 * rtMember2.setIflgResultNy(1); service.insertLogLogin(rtMember2);
				 * 
				 * Date date = rtMember2.getIfmmPwdModDate(); LocalDateTime
				 * ifmmPwdModDateLocalDateTime = LocalDateTime.ofInstant(date.toInstant(),
				 * ZoneId.systemDefault());
				 * 
				 * 
				 * if (ChronoUnit.DAYS.between(ifmmPwdModDateLocalDateTime,
				 * UtilDateTime.nowLocalDateTime()) > Constants.PASSWOPRD_CHANGE_INTERVAL) {
				 * returnMap.put("changePwd", "true"); }
				 */
				 

				returnMap.put("rt", "success");
			} else {
//				dto.setSeq(rtMember.getSeq());
//				dto.setIflgResultNy(0);
//				service.insertLogLogin(dto);

				returnMap.put("rt", "fail");
			}
		} else {
//			dto.setIflgResultNy(0);
//			service.insertLogLogin(dto);

			returnMap.put("rt", "fail");
		}
		return returnMap;
	}	


}//class end
