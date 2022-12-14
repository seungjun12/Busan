package com.september.interpark.modules.pay;

import java.util.List;

public interface PayService {
	
	public Pay selectOne(PayVo vo)throws Exception;

	public List<Pay>selectSeatList(PayVo vo)throws Exception;
	
	public List<Pay>selectSeat(PayVo vo)throws Exception;

	public Pay selectSeatOne(PayVo vo)throws Exception;
	
	public int update(Pay dto)throws Exception;
	
	public int registerConfirm(Pay dto)throws Exception;

}
