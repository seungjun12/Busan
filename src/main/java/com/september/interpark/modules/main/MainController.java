package com.september.interpark.modules.main;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.september.interpark.modules.member.Member;

import nl.captcha.Captcha;

@Controller
public class MainController {
	
	@Autowired
	MainServiceImpl service;
	
	//유저_홈화면
	@RequestMapping(value = "/main/index")
	public String indexForm()throws Exception {
		return "infra/main/xdmin/indexForm";
	}
	
	//관리자_게임리스트
	@RequestMapping(value = "/main/gameList")
	public String gameList(@ModelAttribute("vo") MainVo vo , Model model)throws Exception{
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Main>list= service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/main/xdmin/gameList";
	}
	
	//관리자_폼가기
	@RequestMapping(value = "/main/gameForm")
	public String gameForm(MainVo vo , Model model)throws Exception {
		List<Main> view = service.viewList();
		model.addAttribute("view", view);
		return "infra/main/xdmin/gameForm";
	}
	
	//관리자_게임등록하기
	@RequestMapping(value = "/main/gameInst")
	public String gameInst(Main dto)throws Exception{
		service.gameInst(dto);
		return "redirect:/main/gameList";
	}
	
	//관리자_게임뷰가기
	@RequestMapping(value = "/main/gameView")
	public String gameView(@ModelAttribute("vo") MainVo vo , Model model)throws Exception{
		List<Main> view = service.viewList();
		model.addAttribute("view", view);
		
		Main item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/main/xdmin/gameView";
	}
	
	//관리자_게임정보 수정
	@RequestMapping(value = "/main/gameUpdt")
	public String gameUpdt(Main dto)throws Exception{
		service.update(dto);
		return "redirect:/main/gameList";
	}
	
	//관리자_게임정보 uelete
	@RequestMapping(value = "/main/gameUele")
	public String gameUele(Main dto)throws Exception{
		service.uelete(dto);
		return "redirect:/main/gameList";
	}
	
	//관리자_게임정보 delete
	@RequestMapping(value = "/main/gameDele")
	public String gameDele(MainVo vo)throws Exception{
		service.delete(vo);
		return "redirect:/main/gameList";
	}
	
	//유저_팀선택
	@RequestMapping(value = "/main/teamChoice")
	public String teamChoice()throws Exception{
		return "infra/main/xdmin/teamChoiceForm";
	}
	
	//유저_게임선택
	@RequestMapping(value = "/main/gameChoice")
	public String gameChoice(@ModelAttribute("vo") MainVo vo , Model model)throws Exception{
		List <Main>list=service.selectListGame(vo);
		model.addAttribute("list", list);
		return "infra/main/xdmin/gameChoiceForm";
	}
	
	//유저_좌석선택전 보안
	@RequestMapping(value = "/main/seatLock")
	public String seatLock(@ModelAttribute("vo") MainVo vo, Model model , Member dto, HttpSession httpSession)throws Exception{
		
		
		Main seatItem = service.selectOne(vo);
		model.addAttribute("seatItem", seatItem);
		
		/* Main re = service.selectOneGame(dto); */
		
		
		return "infra/main/xdmin/seatLock";
	}
	
	//유저_좌석선택
	@RequestMapping(value = "/main/seatChoice")
	public String seatChoice(@ModelAttribute("vo") MainVo vo , Model model)throws Exception{
		
		Main seatItem = service.selectOne(vo);
		model.addAttribute("seatItem", seatItem);
		
		List <Main>list=service.selectListSeat(vo);
		model.addAttribute("list", list);
		
		return "infra/main/xdmin/seatChoiceForm";
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
	public Map<String, Object> chkAnswer(HttpServletRequest req, HttpServletResponse res , HttpSession httpSession) {
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
	
	//좌석 빈거 알려주는거 테스트
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/main/test") public Map<String, Object>
	 * loginProc(Member dto, HttpSession httpSession) throws Exception { Map<String,
	 * Object> returnMap = new HashMap<String, Object>();
	 */


	
	
}
