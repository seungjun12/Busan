package com.september.interpark.modules.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService{

	@Autowired
	MainDao dao;

	@Override
	public List<Main> selectList(MainVo vo) throws Exception {
		List<Main> list = dao.selectList(vo);
		return list;
	}

	@Override
	public List<Main> selectListSeatGrade(MainVo vo) throws Exception {
		List<Main> list = dao.selectListSeatGrade(vo);
		return list;
	}
	
	@Override
	public int insert(Main dto) throws Exception {
		return dao.insert(dto);
	}
	
	@Override
	public List<Main> viewList() throws Exception {
		List<Main>list = dao.viewList();
		return list;
	}

	@Override
	public Main selectOne(MainVo vo) throws Exception {
		return dao.selectOne(vo);
	}
	
	
	
	
	
	
	
}
