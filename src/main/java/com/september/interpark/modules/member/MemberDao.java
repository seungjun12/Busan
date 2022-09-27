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
	
	public int insert(Member dto) {
		int result=sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " +result);
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
	
	public int register(Member dto) {
		int result=sqlSession.insert(namespace + ".register", dto);
		System.out.println("dao result: " +result);
		return result;
	}
	
	public Member selectOneId(Member dto) {
		Member result =sqlSession.selectOne(namespace + ".selectOneId", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public Member selectOneLogin(Member dto) {
		Member result = sqlSession.selectOne(namespace + ".selectOneLogin", dto);
		System.out.println("dao result: " + result);
		return result;
	}
}	

