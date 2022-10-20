package com.september.interpark.modules.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService{

	@Autowired
	MainDao dao;

	@Override
	public List<Main> selectList(MainVo vo) throws Exception {return dao.selectList(vo);}

	@Override
	public List<Main> viewList() throws Exception {
		List<Main>list =dao.viewList();
		return list;
		}

	@Override
	public int gameInst(Main dto) throws Exception {return dao.gameInst(dto);}

	@Override
	public Main selectOne(MainVo vo) throws Exception {
		Main result = dao.selectOne(vo);
		return result;
	}


	
	
	
	
	
	
	
	
	
	
	
}
