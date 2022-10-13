package com.september.interpark.modules.main;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@GetMapping("/captcha.do")
	public String Captcha() {
		return "captcha";
	}	

	// captcha 이미지 가져오는 메서드
	@GetMapping("/captchaImg.do")
	@ResponseBody
	public void captchaImg(HttpServletRequest req, HttpServletResponse res) throws Exception{
		new CaptchaUtil().getImgCaptCha(req, res);
	}

	// 전달받은 문자열로 음성 가져오는 메서드
	@GetMapping("/captchaAudio.do")
	@ResponseBody
	public void captchaAudio(HttpServletRequest req, HttpServletResponse res) throws Exception{
		Captcha captcha = (Captcha) req.getSession().getAttribute(Captcha.NAME);
		String getAnswer = captcha.getAnswer();
		new CaptchaUtil().getAudioCaptCha(req, res, getAnswer);
	}

	// 사용자가 입력한 보안문자 체크하는 메서드
	@PostMapping("/chkAnswer.do")
	@ResponseBody
	public String chkAnswer(HttpServletRequest req, HttpServletResponse res) {
		String result = "";
		Captcha captcha = (Captcha) req.getSession().getAttribute(Captcha.NAME);
		String ans = req.getParameter("answer");
		if(ans!=null && !"".equals(ans)) {
			if(captcha.isCorrect(ans)) {
				req.getSession().removeAttribute(Captcha.NAME);
				result = "200";
			}else {
				result = "300";
			}
		}
		return result;
	}
	
	@RequestMapping(value = "/main/seatChoice")
	public String seatChoice(@ModelAttribute("vo") MainVo vo , Model model)throws Exception{
		List<Main> list = service.selectListSeatGrade(vo);
		model.addAttribute("list", list);
		return "infra/main/xdmin/seatChoiceForm";
	}	
	


	
	
}
