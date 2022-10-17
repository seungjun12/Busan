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
	
	
}
