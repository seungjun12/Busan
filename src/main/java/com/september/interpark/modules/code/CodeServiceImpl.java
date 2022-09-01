package com.september.interpark.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeServiceImpl implements CodeService{
	@Autowired /* new 라고 생각하면 된다 */
	CodeDao dao;
	
	@Override
	public List<Code> selectList() throws Exception {
		return dao.selectList();
	}
}
