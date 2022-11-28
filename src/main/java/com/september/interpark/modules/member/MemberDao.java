package com.september.interpark.modules.member;



import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;





@Repository
public class MemberDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.september.interpark.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo){	
		List<Member> list=sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	//관리자 회원기입1
	public int insert(Member dto) {
		int result=sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " +result);
		return result;
	}
	
	//관리자 회원기입2
	public int insert2(Member dto) {
		int result = sqlSession.insert(namespace + ".insert2", dto);
		System.out.println("dao result: " + result );
		return result;
	}
	
	public Member selectOne(MemberVo vo) {
		Member result =sqlSession.selectOne(namespace+".selectOne", vo);
		System.out.println("dao result :" +result);
		return result;
	}
	
	public int selectOneCount(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	
	public int update(Member dto) {return sqlSession.update(namespace + ".update", dto);}
	public int uelete(Member dto) {return sqlSession.update(namespace + ".uelete", dto);}
	public int delete(MemberVo vo) {return sqlSession.delete(namespace + ".delete", vo);}
	
	public int selectOneIdCheck(Member dto) {
		int result = sqlSession.selectOne(namespace + ".selectOneIdCheck", dto);
		System.out.println("dao result :" + result);
		return result;
	}
	
	//유저 회원가입1
	public int register(Member dto) {
		int result=sqlSession.insert(namespace + ".register", dto);
		System.out.println("dao result: " +result);
		return result;
	}
	
	//유저 회원가입2
	public int register2(Member dto) {
		int result = sqlSession.insert(namespace + ".register2", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Member selectOneId(Member dto) {
		Member result =sqlSession.selectOne(namespace + ".selectOneId", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	//유저 로그인
	public Member selectOneLogin(Member dto) {
		Member result = sqlSession.selectOne(namespace + ".selectOneLogin", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	//관리자 로그인
	public Member selectOneLoginAdmin(Member dto) {
		Member result = sqlSession.selectOne(namespace + ".selectOneLoginAdmin", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	/*
	 * public Member selectMember(MemberVo vo) { Member result
	 * =sqlSession.selectOne(namespace + "selectMember" , vo);
	 * System.out.println("dao result :" +result); return result; }
	 */

	public int pwdUpdate(Member dto) {return sqlSession.update(namespace + ".pwdUpdate", dto);}
	
	public Member selectMember(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectMember", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public List<Member>selectRegister(MemberVo vo){
		List<Member> reglist=sqlSession.selectList(namespace +".selectRegister", vo);
		System.out.println("dao reglist: " + reglist);
		return reglist;
	}
	
	public List<Member>selectRegister1(MemberVo vo){
		List<Member> reglist=sqlSession.selectList(namespace +".selectRegister1", vo);
		/* System.out.println("dao reglist1: " + reglist); */
		return reglist;
	}
	
	public List<Member>selectRegister2(MemberVo vo){
		List<Member> reglist=sqlSession.selectList(namespace +".selectRegister2", vo);
		/* System.out.println("dao reglist2: " + reglist); */
		return reglist;
	}
	
	public List<Member>selectRegister3(MemberVo vo){
		List<Member> reglist=sqlSession.selectList(namespace +".selectRegister3", vo);
		System.out.println("dao reglist3: " + reglist);
		return reglist;
	}
	
	//회원정보 수정1
	public int memberUpdate1(Member dto) {return sqlSession.update(namespace + ".memberUpdate1", dto);}
	
	//회원정보 수정2
	public int memberUpdate2(Member dto) {return sqlSession.update(namespace +".memberUpdate2", dto);}
	
	//아이디 찾기1
	public Member selectOneName(Member dto) {
		Member result = sqlSession.selectOne(namespace +".selectOneName", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	//아이디 찾기2
	public Member selectFindId(Member dto) {
		Member result = sqlSession.selectOne(namespace + ".selectFindId", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	//비밀번호 찾기1
	public Member selectOneIdd(Member dto) {
		Member result =sqlSession.selectOne(namespace + ".selectOneIdd", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	
	//비밀번호 찾기2
	public Member selectFindPwd(Member dto) {
		Member result = sqlSession.selectOne(namespace + ".selectFindPwd", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	//카카오 로그인
	public Member snsLoginCheck(Member dto) {
		return sqlSession.selectOne(namespace + ".snsLoginCheck", dto);
	}
	
	public int kakaoInst(Member dto) {
		return sqlSession.insert(namespace + ".kakaoInst", dto);
	}
	
	public int naverInst(Member dto) {
		return sqlSession.insert(namespace + ".naverInst", dto);
	}
	
}//class end	

