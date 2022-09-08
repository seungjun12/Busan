package com.september.interpark.modules.code;



import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.swing.text.View;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.september.interpark.modules.code.CodeMapper";
	
	public List<Code> selectList(CodeVo vo){
		List<Code> list=sqlSession.selectList(namespace+".selectList", vo); 
		return list;
	}
	
	public int insert(Code dto) {
		int result=sqlSession.insert(namespace+ ".insert", dto);
		System.out.println("dao result: "+result);
		return result;
	}
	
	public List<Code> viewList(){
		List<Code> list=sqlSession.selectList(namespace+".viewList"); 
		return list;
	}
	
}