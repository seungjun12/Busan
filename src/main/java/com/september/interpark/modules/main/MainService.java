package com.september.interpark.modules.main;

import java.util.List;

public interface MainService {

	public List<Main> selectList(MainVo vo)throws Exception;
	
	public List<Main> selectListSeatGrade(MainVo vo)throws Exception;
	
	public int insert(Main dto) throws Exception;
}
