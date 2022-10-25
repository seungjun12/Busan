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
	public Main selectOne(MainVo vo) throws Exception {return dao.selectOne(vo);}

	@Override
	public int update(Main dto) throws Exception {return dao.update(dto);}

	@Override
	public int uelete(Main dto) throws Exception {return dao.uelete(dto);}

	@Override
	public int delete(MainVo vo) throws Exception {return dao.delete(vo);}

	@Override
	public int selectOneCount(MainVo vo) throws Exception {return dao.selectOneCount(vo);}

	@Override
	public List<Main> selectListGame(MainVo vo) throws Exception {return dao.selectListGame(vo);}

	@Override
	public List<Main> selectListSeat(MainVo vo) throws Exception {return dao.selectListSeat(vo);}


	@Override
	public Main selectOneGame(Main dto) throws Exception {return dao.selectOneGame(dto);}
	
	
	
	
	
	


	
	
	
	
	
	
	
	
	
	
	
}
