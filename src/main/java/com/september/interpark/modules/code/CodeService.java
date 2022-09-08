package com.september.interpark.modules.code;

import java.util.List;

import com.september.interpark.modules.codegroup.CodeGroup;
import com.september.interpark.modules.codegroup.CodeGroupVo;

public interface CodeService {
	public List<Code> selectList(CodeVo vo) throws Exception; 
	
	public int insert(Code dto) throws Exception;
	
	 public List<Code>viewList() throws Exception; 
	
}
