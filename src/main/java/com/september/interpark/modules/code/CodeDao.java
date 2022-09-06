package com.september.interpark.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.september.interpark.modules.codegroup.CodeGroup;



@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.september.interpark.modules.code.CodeMapper";
	
	public List<Code> selectList(CodeVo vo){
		List<Code> list=sqlSession.selectList("com.september.interpark.modules.code.CodeMapper.selectList", vo);
		return list;
	}
	
	public int insert(Code dto) {
		int result=sqlSession.insert(namespace+ ".insert", dto);
		System.out.println("dao result: "+result);
		return result;
	}
}