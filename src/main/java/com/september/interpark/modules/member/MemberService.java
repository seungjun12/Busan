package com.september.interpark.modules.member;

import java.util.List;

import com.september.interpark.modules.user.User;



public interface MemberService {

	public List<Member> selectList(MemberVo vo) throws Exception;
	
	public int insert(Member dto) throws Exception;  
	
	public Member selectOne(MemberVo vo) throws Exception;
	
	public int selectOneCount(MemberVo vo) throws Exception;
	
	public int update(Member dto) throws Exception;
	
	public int uelete(Member dto) throws Exception;
	
	public int delete(MemberVo vo) throws Exception;
	
	public int selectOneIdCheck(Member dto) throws Exception;
	

}
