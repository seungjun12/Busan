package com.september.interpark.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.september.interpark.common.util.UtilSecurity;


@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list=dao.selectList(vo);
		return list;
	}

	//관리자 회원기입1
	@Override
	public int insert(Member dto) throws Exception {
		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
    	dto.setName(dto.getName());
		/* dto.setIfmmPwdModDate(UtilDateTime.nowDate()); */
		return dao.insert(dto);
	}
	
	//관리자 회원기입2
	@Override
	public int insert2(Member dto) throws Exception {
		return dao.insert2(dto);
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		Member result=dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}

	

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int update(Member dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int uelete(Member dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}


	@Override
	public int selectOneIdCheck(Member dto) throws Exception {
		int result = dao.selectOneIdCheck(dto);
		System.out.println("service result: " + result);
		return result;
	}

	//유저 회원가입1
	@Override
	public int register(Member dto) throws Exception {
		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
    	dto.setName(dto.getName());
		/* dto.setIfmmPwdModDate(UtilDateTime.nowDate()); */
		return dao.register(dto);
	}
	
	//유저 회원가입2
	@Override
	public int register2(Member dto) throws Exception {
		return dao.register2(dto);
	}

	//로그인
	@Override
	public Member selectOneId(Member dto) throws Exception {
		return dao.selectOneId(dto);
	}

    //유저 로그인
	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
		return dao.selectOneLogin(dto);
	}
	
	//관리자 로그인
	@Override
	public Member selectOneLoginAdmin(Member dto) throws Exception {
		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
		return dao.selectOneLoginAdmin(dto);
	}
	
	@Override
	public int pwdUpdate(Member dto) throws Exception {
		dto.setPwd(UtilSecurity.encryptSha256(dto.getPwd()));
		return dao.pwdUpdate(dto);
	}

	@Override
	public Member selectMember(MemberVo vo) throws Exception {
		Member result = dao.selectMember(vo);
		System.out.println("service result: " + result);
		return result;
	}

	@Override
	public List<Member> selectRegister(MemberVo vo) throws Exception {
		List<Member> reglist = dao.selectRegister(vo);
		System.out.println("service reglist: " + reglist);
		return reglist;
	}

	//회원정보 수정 1
	@Override
	public int memberUpdate1(Member dto) throws Exception {
		return dao.memberUpdate1(dto);
	}
	
	//회원정보 수정2
	@Override
	public int memberUpdate2(Member dto)throws Exception {
		return dao.memberUpdate2(dto);
	}

	//유저 아이디 찾기1
	@Override
	public Member selectOneName(Member dto) throws Exception {
		return dao.selectOneName(dto);
	}

	//유저 아이디 찾기2
	@Override
	public Member selectFindId(Member dto) throws Exception {
		return dao.selectFindId(dto);
	}

	//유저 비밀번호 찾기1
	@Override
	public Member selectOneIdd(Member dto) throws Exception {
		return dao.selectOneIdd(dto);
	}
	
	//유저 비밀번호 찾기2
	@Override
	public Member selectFindPwd(Member dto) throws Exception {
		return dao.selectFindPwd(dto);
	}

	@Override
	public List<Member> selectRegister1(MemberVo vo) throws Exception {
		List<Member> reglist = dao.selectRegister1(vo);
		System.out.println("service reglist: " + reglist);
		return reglist;
	}
	
	@Override
	public List<Member> selectRegister2(MemberVo vo) throws Exception {
		List<Member> reglist = dao.selectRegister2(vo);
		System.out.println("service reglist: " + reglist);
		return reglist;
	}
	
	@Override
	public List<Member> selectRegister3(MemberVo vo) throws Exception {
		List<Member> reglist = dao.selectRegister3(vo);
		System.out.println("service reglist: " + reglist);
		return reglist;
	}

	@Override
	public Member snsLoginCheck(Member dto) throws Exception {
		return dao.snsLoginCheck(dto); 
	}

	@Override
	public int kakaoInst(Member dto) throws Exception {
		return dao.kakaoInst(dto);
	}

	@Override
	public int naverInst(Member dto) throws Exception {
		return dao.naverInst(dto);
	}



	
	
	

	

	/*
	 * @Override public Member selectMember(MemberVo vo) throws Exception { Member
	 * result=dao.selectMember(vo); System.out.println("service result: " + result);
	 * return result; }
	 */
	
	
	
	
	
	

	
	
	
	

	
	
	
	
	
}
