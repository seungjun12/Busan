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
	
	public List<Main>selectList(MainVo vo){
		List<Main> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public List<Main>selectListSeatGrade(MainVo vo){
		List<Main> list = sqlSession.selectList(namespace + ".selectListSeatGrade", vo);
		return list;
	}
	
	public int insert(Main dto) {return sqlSession.insert(namespace + ".insert", dto);}
	
	public List<Main> viewList(){
		return sqlSession.selectList(namespace + ".viewList", "");
	}
	
	public Main selectOne(MainVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
	public int update(Main dto) {return sqlSession.update(namespace + ".update", dto);}
	public int uelete(Main dto) {return sqlSession.update(namespace + ".uelete", dto);}
	public int delete(MainVo vo) {return sqlSession.delete(namespace + ".delete", vo);}
	public int selectOneCount(MainVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	
}
