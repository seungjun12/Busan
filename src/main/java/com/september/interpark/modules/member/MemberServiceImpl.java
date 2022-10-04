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

	@Override
	public Member selectOneId(Member dto) throws Exception {
		return dao.selectOneId(dto);
	}

	

	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

	@Override
	public int pwdUpdate(Member dto) throws Exception {
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

	@Override
	public int memberUpdate(Member dto) throws Exception {
		return dao.memberUpdate(dto);
	}
	
	

	

	/*
	 * @Override public Member selectMember(MemberVo vo) throws Exception { Member
	 * result=dao.selectMember(vo); System.out.println("service result: " + result);
	 * return result; }
	 */
	
	
	
	
	
	

	
	
	
	

	
	
	
	
	
}
