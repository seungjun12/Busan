package com.september.interpark.modules.member;

import java.util.List;




public interface MemberService {

	public List<Member> selectList(MemberVo vo) throws Exception;
	
	//관리자 회원기입1
	public int insert(Member dto) throws Exception;  
	
	//관리자 회원기입2
	public int insert2(Member dto)throws Exception;
	
	public Member selectOne(MemberVo vo) throws Exception;
	
	public int selectOneCount(MemberVo vo) throws Exception;
	
	public int update(Member dto) throws Exception;
	
	public int uelete(Member dto) throws Exception;
	
	public int delete(MemberVo vo) throws Exception;
	
	public int selectOneIdCheck(Member dto) throws Exception;
	
	//유저 회원가입1
	public int register(Member dto)throws Exception;
	
	//유저 회원가입2
	public int register2(Member dto)throws Exception;
	
	public Member selectOneId(Member dto) throws Exception;
	
	public Member selectOneLogin(Member dto) throws Exception;
	
	/* public Member selectMember(MemberVo vo)throws Exception; */
	
	public int pwdUpdate(Member dto) throws Exception;
	
	public Member selectMember(MemberVo vo) throws Exception;
	
	public List<Member> selectRegister(MemberVo vo)throws Exception;
	
	public int memberUpdate(Member dto) throws Exception;

}
