package com.september.interpark.modules.pay;

import java.util.List;

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
	
	public List<Pay>selectSeatList(PayVo vo){return sqlSession.selectList(namespace + ".selectSeatList", vo);}
	
	public List<Pay> selectSeat(PayVo vo) {return sqlSession.selectList(namespace + ".selectSeat", vo);}
	
	public Pay selectSeatOne(PayVo vo) {return sqlSession.selectOne(namespace +".selectSeatOne", vo);}
	
	public int update(Pay dto) {return sqlSession.update(namespace +".update", dto);}
	
	public int registerConfirm(Pay dto) {return sqlSession.insert(namespace + ".registerConfirm", dto);}
	
}
