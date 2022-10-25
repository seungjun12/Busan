package com.september.interpark.modules.main;

import java.util.List;

public interface MainService {

	public List<Main>selectList(MainVo vo)throws Exception;
	
	public List<Main>viewList()throws Exception;
	
	public int gameInst(Main dto)throws Exception;
	
	public Main selectOne(MainVo vo)throws Exception;
	
	public int update(Main dto)throws Exception;
	
	public int uelete(Main dto)throws Exception;
	
	public int delete(MainVo vo)throws Exception;
	
	public int selectOneCount(MainVo vo)throws Exception;
	
	public List<Main>selectListGame(MainVo vo)throws Exception;
	
	public List<Main>selectListSeat(MainVo vo)throws Exception;
	
	
	public Main selectOneGame(Main dto)throws Exception;
	
	
}
