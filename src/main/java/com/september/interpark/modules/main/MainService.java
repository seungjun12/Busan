package com.september.interpark.modules.main;

import java.util.List;

public interface MainService {

	public List<Main> selectList(MainVo vo)throws Exception;
}
