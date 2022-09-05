package com.september.interpark.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.september.interpark.modules.codegroup.CodeGroupMapper";

//	private List<CodeGroup> selectList(CodeGroupVo vo){return sqlSession.selectList(namespace +".selectList",vo);}	
	
	public List<CodeGroup> selectList(CodeGroupVo vo){
//	    List<CodeGroup> list= sqlSession.selectList(namespace+".selectList",vo);	
		List<CodeGroup> list=sqlSession.selectList("com.september.interpark.modules.codegroup.CodeGroupMapper.selectList", vo);
		return list;
	}
	
}