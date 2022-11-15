package com.september.interpark.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.september.interpark.common.constants.Constants;
import com.september.interpark.modules.code.CodeServiceImpl;


@Controller
@RequestMapping(value = "/member/")
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	//관리자 리스트 화면 가기
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
	
	//관리자 맴버등록폼 가기
	@RequestMapping(value = "memberForm")
	public String memberForm() throws Exception{
		return "infra/member/xdmin/memberForm";
	}
	
	//관리자 맴버 등록하기
	@RequestMapping(value = "memberInst")
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		service.insert2(dto);
		
		vo.setSeq(dto.getSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
	}
	
	//관리자 맴버 상세보기
	@RequestMapping(value = "memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo,Model model) throws Exception {
		Member item=service.selectOne(vo);
		model.addAttribute("item", item);
		System.out.println("controller item" + item);
		return "infra/member/xdmin/memberView";
	}
	
	//관리자 맴버 정보 업데이트
	@RequestMapping(value = "memberUpdt")
	public String memberUpdt(MemberVo vo,Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		return "redirect:/member/memberList";
	}
	
	//관리자 맴버 정보 사용여부 삭제
	@RequestMapping(value = "memberUele")
	public String memberUele(MemberVo vo , Member dto , RedirectAttributes redirectAttributes) throws Exception {
		service.uelete(dto);
		return "redirect:/member/memberList";
	}
	
	//관리자 맴버 정보 완전삭제
	@RequestMapping(value = "memberDele")
	public String memberDele(MemberVo vo , RedirectAttributes redirectAttributes)throws Exception {
		service.delete(vo);
		return "redirect:/member/memberList";
	}

	//유저 회원가입 아이디 중복 체크
	@ResponseBody
	@RequestMapping(value = "checkId")
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
	
	//유저 회원가입 화면가기
	@RequestMapping(value = "register")
	public String registerForm()throws Exception{
		return "infra/member/xdmin/registerForm";
	}
	
	
	//유저 회원가입
	@RequestMapping(value = "memberRegister")
	public String memberRegister(Member dto)throws Exception{
		service.register(dto);
		service.register2(dto);
		return "redirect:/main/index";
	}
	
	//유저 로그인 화면가기
	@RequestMapping(value = "login")
	public String login()throws Exception{
		return "infra/member/xdmin/loginForm";
	}
	
	//유저 로그인하기
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.selectOneId(dto);

		if (rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getSeq());
				httpSession.setAttribute("sessId", rtMember2.getId());
				httpSession.setAttribute("sessName", rtMember2.getName());
				httpSession.setAttribute("sessEmail", rtMember2.getEmail());
				httpSession.setAttribute("sessDob", rtMember2.getDob());
				httpSession.setAttribute("sessGender", rtMember2.getGender());
				httpSession.setAttribute("sessPersonal", rtMember2.getPersonalAgree());
				httpSession.setAttribute("sessPwd", rtMember2.getPwd());
				 
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}	
	
	//관리자 로그인하기
		@ResponseBody
		@RequestMapping(value = "loginProcAdmin")
		public Map<String, Object> loginProcAdmin(Member dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();

			Member rtMember = service.selectOneId(dto);

			if (rtMember != null) {
				Member rtMember2 = service.selectOneLoginAdmin(dto);

				if (rtMember2 != null) {
					
					
					httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
					httpSession.setAttribute("sessSeq", rtMember2.getSeq());
					httpSession.setAttribute("sessId", rtMember2.getId());
					httpSession.setAttribute("sessName", rtMember2.getName());
					httpSession.setAttribute("sessEmail", rtMember2.getEmail());
					httpSession.setAttribute("sessDob", rtMember2.getDob());
					httpSession.setAttribute("sessGender", rtMember2.getGender());
					httpSession.setAttribute("sessPersonal", rtMember2.getPersonalAgree());
					httpSession.setAttribute("sessPwd", rtMember2.getPwd());
					
					 
					returnMap.put("rt", "success");
				} else {

					returnMap.put("rt", "fail");
				}
			} else {
				
				returnMap.put("rt", "fail");
			}
			return returnMap;
		}
	
	//로그아웃 연습
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/member/logoutProc") public Map<String, Object>
	 * logoutProc(Member dto, HttpSession httpSession) throws Exception{ Map<String,
	 * Object> returnMap = new HashMap<String, Object>(); Member rtMember =
	 * service.selectOneId(dto); Member rtMember2 = service.selectOneLogin(dto);
	 * 
	 * httpSession.setAttribute("sessSeq", rtMember2.getSeq());
	 * httpSession.setAttribute("sessId", rtMember2.getId());
	 * httpSession.setAttribute("sessName", rtMember2.getName());
	 * 
	 * returnMap.put("sessSeq", null); return returnMap; }
	 */
	
	//유저 마이페이지 가기
	@RequestMapping(value = "memberViewForm")
	public String memberViewForm()throws Exception{
		return "infra/member/xdmin/memberViewForm";
	}
	
	//유저 회원정보수정가기
	@RequestMapping(value = "informationMod")
	public String informationMod(@ModelAttribute("vo") MemberVo vo , Model model)throws Exception{
		Member item = service.selectMember(vo);
		model.addAttribute("item", item);
		 return "infra/member/xdmin/informationMod";
	}
	
	//유저 비밀번호 변경 화면가기
	@RequestMapping(value = "pwdMod")
	public String pwdMod()throws Exception{
		return "infra/member/xdmin/pwdModForm";
	}
	
	//유저 로그아웃 하기
	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		/* UtilCookie.deleteCookie(); */
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	//유저 비밀번호 변경하기
	@RequestMapping(value = "pwdUpdt")
	public String pwdUpdate(Member dto , RedirectAttributes redirectAttributes)throws Exception{
		
		service.pwdUpdate(dto);
		return "redirect:/member/memberViewForm";
	}
	
	//유저 예매확인,취소가기
	@RequestMapping(value = "registerConfirm")
	public String registerConfirm(@ModelAttribute MemberVo vo , Model model)throws Exception{
		List<Member> reglist = service.selectRegister(vo);
		model.addAttribute("reglist", reglist);
		System.out.println("controller reglist: " + reglist);
		return "infra/member/xdmin/registerConfirm";
	}
	
	//유저 예매확인,취소가기
		@RequestMapping(value = "registerConfirm1")
		public String registerConfirm1(@ModelAttribute MemberVo vo , Model model)throws Exception{
			List<Member> reglist = service.selectRegister1(vo);
			model.addAttribute("reglist", reglist);
			System.out.println("controller reglist: " + reglist);
			return "infra/member/xdmin/registerConfirm";
		}
		
	//유저 예매확인,취소가기 1년
	@RequestMapping(value = "registerConfirm2")
	public String registerConfirm2(@ModelAttribute MemberVo vo , Model model)throws Exception{
		List<Member> reglist = service.selectRegister2(vo);
		model.addAttribute("reglist", reglist);
		return "infra/member/xdmin/registerConfirm";
	}
	
	//유저 예매확인,취소가기
			@RequestMapping(value = "registerConfirm3")
			public String registerConfirm3(@ModelAttribute MemberVo vo , Model model)throws Exception{
				List<Member> reglist = service.selectRegister3(vo);
				model.addAttribute("reglist", reglist);
				System.out.println("controller reglist: " + reglist);
				return "infra/member/xdmin/registerConfirm";
			}
	
	//유저 아이디 찾기
	@RequestMapping(value = "findId")
	public String findId()throws Exception{
		return "infra/member/xdmin/findId";
	}
	
	//유저 회원정보수정  수정하자 마자 정보 변경되게 만들어야하는데
	@RequestMapping(value = "memberUpdate")
	public String memberUpdate(Member dto , HttpSession httpSession , RedirectAttributes redirectAttributes)throws Exception{
		service.memberUpdate1(dto);
		service.memberUpdate2(dto);
		
		httpSession.setAttribute("sessName", dto.getName()); //내일 물어보자!
		
		
		return "redirect:/member/memberViewForm";
	}
	
	//유저 아이디 찾기 실행
	@ResponseBody
	@RequestMapping(value = "findIdProc")
	public Map<String, Object> findIdProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.selectOneName(dto);

		if (rtMember != null) {
			Member rtMember2 = service.selectFindId(dto);

			if (rtMember2 != null) {
				
				/*
				 * if(dto.getAutoLogin() == true) {
				 * UtilCookie.createCookie(Constants.COOKIE_NAME_SEQ, rtMember2.getIfmmSeq(),
				 * Constants.COOKIE_DOMAIN, Constants.COOKIE_PATH, Constants.COOKIE_MAXAGE); }
				 * else { // by pass }
				 */
				
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
	
	//아이디 찾기 결과화면
	@RequestMapping(value = "findIdResult")
	public String findIdResult()throws Exception{
		return "infra/member/xdmin/findIdResult";
	}
	
	//유저 비밀번호 찾기
	@RequestMapping(value = "findPwd")
	public String findPwd()throws Exception{
		return "infra/member/xdmin/findPwd";
	}
	
	//유저 비밀번호 찾기 실행
		@ResponseBody
		@RequestMapping(value = "findPwdProc")
		public Map<String, Object> findPwdProc(Member dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();

			Member rtMember = service.selectOneIdd(dto);

			if (rtMember != null) {
				Member rtMember2 = service.selectFindPwd(dto);

				if (rtMember2 != null) {
					
					/*
					 * if(dto.getAutoLogin() == true) {
					 * UtilCookie.createCookie(Constants.COOKIE_NAME_SEQ, rtMember2.getIfmmSeq(),
					 * Constants.COOKIE_DOMAIN, Constants.COOKIE_PATH, Constants.COOKIE_MAXAGE); }
					 * else { // by pass }
					 */
					
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
//					dto.setSeq(rtMember.getSeq());
//					dto.setIflgResultNy(0);
//					service.insertLogLogin(dto);

					returnMap.put("rt", "fail");
				}
			} else {
//				dto.setIflgResultNy(0);
//				service.insertLogLogin(dto);
				
				returnMap.put("rt", "fail");
			}
			return returnMap;
		}
		
		//비밀번호 찾기 결과화면
		@RequestMapping(value = "findPwdResult")
		public String findPwdResult()throws Exception{
			return "infra/member/xdmin/findPwdMod";
		}
		
		//비밀번호 찾기_새로운비밀번호
		@RequestMapping(value = "findPwdModify")
		public String findPwdModify(Member dto)throws Exception{
			service.pwdUpdate(dto);
			return "infra/member/xdmin/findPwdEnd";
		}
		
		//회원리스트 엑셀다운
		@RequestMapping("excelDownload")
	    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
			
//			setSearch(vo);
			vo.setParamsPaging(service.selectOneCount(vo));

			if (vo.getTotalRows() > 0) {
				List<Member> list = service.selectList(vo);
				
//				Workbook workbook = new HSSFWorkbook();	// for xls
		        Workbook workbook = new XSSFWorkbook();
		        Sheet sheet = workbook.createSheet("Sheet1");
		        CellStyle cellStyle = workbook.createCellStyle();        
		        Row row = null;
		        Cell cell = null;
		        int rowNum = 0;
				
//		        each column width setting	        
		        sheet.setColumnWidth(0, 2100);
		        sheet.setColumnWidth(1, 3100);

//		        Header
		        String[] tableHeader = {"Seq", "이름", "아이디", "성별", "이메일", "휴대폰", "주소", "상세주소", "우편번호" , "개인정보 유효기간"};

		        row = sheet.createRow(rowNum++);
		        
				for(int i=0; i<tableHeader.length; i++) {
					cell = row.createCell(i);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
					cell.setCellValue(tableHeader[i]);
				}

//		        Body
		        for (int i=0; i<list.size(); i++) {
		            row = sheet.createRow(rowNum++);
		            
//		            String type: null 전달 되어도 ok
//		            int, date type: null 시 오류 발생 하므로 null check
//		            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
		            
		            cell = row.createCell(0);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		            cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
		            
		            cell = row.createCell(1);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getName());
		        	
		            cell = row.createCell(2);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getId());
		        	
		            cell = row.createCell(3);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		            if(list.get(i).getGender() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getGender()));
		            
		            cell = row.createCell(4);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            cell.setCellValue(list.get(i).getEmail());
		            
		            cell = row.createCell(5);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            cell.setCellValue(list.get(i).getNumber());
		            
		            cell = row.createCell(6);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            cell.setCellValue(list.get(i).getAddress());    
		            
		            cell = row.createCell(7);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getAddress2());	
		        	
		            cell = row.createCell(8);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            cell.setCellValue(list.get(i).getAddressCode());
		            
		            cell = row.createCell(9);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            if(list.get(i).getPersonalAgree() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getPersonalAgree()));
		        }

		        httpServletResponse.setContentType("ms-vnd/excel");
//		        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
		        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

		        workbook.write(httpServletResponse.getOutputStream());
		        workbook.close();
			}
	    }
		
		//카카오 로그인
		@ResponseBody
		@RequestMapping(value = "kakaoLoginProc")
		public Map<String, Object> kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
		    Map<String, Object> returnMap = new HashMap<String, Object>();
		    
			Member kakaoLogin = service.snsLoginCheck(dto);
			
			 System.out.println("test : " + dto.getToken());
			
			if (kakaoLogin == null) {
				service.kakaoInst(dto);
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
				// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
	            session(dto, httpSession); 
				returnMap.put("rt", "success");
			} else {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
				
				// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
				session(kakaoLogin, httpSession);
				returnMap.put("rt", "success");
			}
			return returnMap;
		}

		 public void session(Member dto, HttpSession httpSession) {
		     httpSession.setAttribute("sessSeq", dto.getSeq());    
		     httpSession.setAttribute("sessId", dto.getId());
		     httpSession.setAttribute("sessName", dto.getName());
		     httpSession.setAttribute("sessEmail", dto.getEmail());
//		     httpSession.setAttribute("sessUser", dto.getUser_div());
//		     httpSession.setAttribute("sessSns", dto.getSns_type());
		 }
		
		
	
}//class end
