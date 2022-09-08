package com.september.interpark.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeServiceImpl implements CodeService{
	@Autowired /* new 라고 생각하면 된다 */
	CodeDao dao;
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		List<Code> list=dao.selectList(vo);
		return list;
	}

	@Override
	public int insert(Code dto) throws Exception {
		int result=dao.insert(dto);
		System.out.println("service result: "+result);
		return result;
	}

	@Override
	public List<Code> viewList() throws Exception {
		List<Code> list=dao.viewList();
		return list;
	}
	
	
	
	
	
}
