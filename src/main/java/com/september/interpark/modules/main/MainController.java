package com.september.interpark.modules.main;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.september.interpark.modules.code.Code;
import com.september.interpark.modules.code.CodeVo;

import nl.captcha.Captcha;

@Controller
public class MainController {
	
	@Autowired
	MainServiceImpl service;
	
	@RequestMapping(value = "/main/index")
	public String indexForm()throws Exception {
		return "infra/main/xdmin/indexForm";
	}
	
	@RequestMapping(value = "/main/gameChoice")
	public String gameChoiceForm(@ModelAttribute("vo") MainVo vo , Model model)throws Exception {
		List<Main> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/main/xdmin/gameChoiceForm";
	}
	
	@RequestMapping(value = "/main/teamChoice")
	public String teamChoice()throws Exception{
		return "infra/main/xdmin/teamChoiceForm";
	}
	
	// 페이지 매핑
	@RequestMapping("/captcha.do")
	public String Captcha() {
		return "captcha";
	}	

	// captcha 이미지 가져오는 메서드
	@RequestMapping("/captchaImg.do")
	@ResponseBody
	public void captchaImg(HttpServletRequest req, HttpServletResponse res) throws Exception{
		new CaptchaUtil().getImgCaptCha(req, res);
	}

	// 전달받은 문자열로 음성 가져오는 메서드
	@RequestMapping("/captchaAudio.do")
	@ResponseBody
	public void captchaAudio(HttpServletRequest req, HttpServletResponse res) throws Exception{
		Captcha captcha = (Captcha) req.getSession().getAttribute(Captcha.NAME);
		String getAnswer = captcha.getAnswer();
		new CaptchaUtil().getAudioCaptCha(req, res, getAnswer);
	}

	// 사용자가 입력한 보안문자 체크하는 메서드
	@RequestMapping("/chkAnswer.do")
	@ResponseBody
	public Map<String, Object> chkAnswer(HttpServletRequest req, HttpServletResponse res ) {
	Map<String,Object>returnMap = new HashMap<String,Object>();	
		System.out.println("controller:" +"controller");
		System.out.println(req.getParameter("answer"));
		
		Captcha captcha = (Captcha) req.getSession().getAttribute(Captcha.NAME);
		System.out.println("captcha: " + captcha);
		
		String ans = req.getParameter("answer");
		System.out.println("ans: " +ans);
		
		if(ans!=null && !"".equals(ans)) {
			System.out.println("success1");
			if(captcha.isCorrect(ans)) {
				req.getSession().removeAttribute(Captcha.NAME);
				returnMap.put("rt", "success");
				System.out.println("success");
			}else {
				req.getSession().removeAttribute(Captcha.NAME);
				returnMap.put("rt", "fail");
				System.out.println("fail");
			}
		}
		return returnMap;
	}
	
	@RequestMapping(value = "/main/seatChoice")
	public String seatChoice(@ModelAttribute("vo") MainVo vo , Model model)throws Exception{
		List<Main> list = service.selectListSeatGrade(vo);
		List<Main> teamList = service.selectList(vo);
		model.addAttribute("list", list);
		model.addAttribute("teamList", teamList);
		return "infra/main/xdmin/seatChoiceForm";
	}
	
	//관리자 게임리스트
	@RequestMapping(value = "/main/gameList")
	public String gameList(@ModelAttribute("vo") MainVo vo , Model model)throws Exception{
		List<Main>list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/main/xdmin/gameList";
	}
	
	//관리자 게임등록화면가기
	@RequestMapping(value = "/main/gameForm")
	public String gameFor(Model model)throws Exception{
		
		List<Main> view = service.viewList();
		model.addAttribute("view", view);
		return "infra/main/xdmin/gameForm";
	}
	
	//관리자 게임정보등록하기
	@RequestMapping(value = "/main/gameInst")
	public String gameInst(Main dto) throws Exception{
		service.insert(dto);
		return "redirect:/main/gameList";
	}
	
	//관리자 게임정보뷰가기
	@RequestMapping(value = "/main/gameView")
	public String gameView(@ModelAttribute("vo") MainVo vo , Model model) throws Exception{
		
		List<Main> view = service.viewList();
		model.addAttribute("view", view);
		
		Main item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/main/xdmin/gameView";
	}
	


	
	
}
