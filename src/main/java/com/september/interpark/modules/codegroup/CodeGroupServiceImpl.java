package com.september.interpark.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeGroupServiceImpl implements CodeGroupService{

	@Autowired /* new 라고 생각하면 된다 */
	CodeGroupDao dao;
	
//	@Override
//	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception{
//		return dao.selectList(vo);
//	}
	
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		 List<CodeGroup> list=dao.selectList(vo);
		 return list;
	}
	
}
