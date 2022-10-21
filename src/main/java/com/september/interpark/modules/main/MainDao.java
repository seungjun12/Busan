package com.september.interpark.modules.main;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MainDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.september.interpark.modules.main.MainMapper";
	
	//관리자_게임리스트
	public List<Main>selectList(MainVo vo){return sqlSession.selectList(namespace +".selectList", vo);}
	
	//관리자_폼_팀들 보여주기
	public List<Main>viewList(){return sqlSession.selectList(namespace + ".viewList", "");}
	
	
	//관리자_폼_게임등록하기
	public int gameInst(Main dto) {return sqlSession.insert(namespace + ".gameInst", dto);}

	//관리자_뷰_정보보기
	public Main selectOne(MainVo vo) {
		Main result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
	
	//관리자_뷰_정보업데이트
	public int update(Main dto) {return sqlSession.update(namespace + ".update", dto);}

	//관리자_뷰_uelete
	public int uelete(Main dto) {return sqlSession.update(namespace + ".uelete", dto);}
	
	//관리자_뷰_delete
	public int delete(MainVo vo) {return sqlSession.delete(namespace + ".delete", vo);}

	public int selectOneCount(MainVo vo) {return sqlSession.selectOne(namespace +".selectOneCount", vo);}



}
