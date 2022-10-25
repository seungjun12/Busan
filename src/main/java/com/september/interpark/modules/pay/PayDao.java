package com.september.interpark.modules.pay;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PayDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.september.interpark.modules.pay.PayMapper";
	
	public Pay selectOne(PayVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}

}
