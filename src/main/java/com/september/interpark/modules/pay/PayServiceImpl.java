package com.september.interpark.modules.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PayServiceImpl implements PayService{

	@Autowired
	PayDao dao;

	@Override
	public Pay selectOne(PayVo vo) throws Exception {return dao.selectOne(vo);}
	
	@Override
	public List<Pay> selectSeatList(PayVo vo)throws Exception{return dao.selectSeatList(vo);}
	
}
