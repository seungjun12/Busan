package com.september.interpark.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




@Service
public class CodeServiceImpl implements CodeService{
	@Autowired /* new 라고 생각하면 된다 */
	CodeDao dao;
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		List<Code> list=dao.selectList(vo);
		System.out.println("service list: " + list);
		return list;
	}

	@Override
	public int insert(Code dto) throws Exception {
		int result=dao.insert(dto);
		System.out.println("service result: "+result);
		return result;
	}

	
	  @Override public List<Code> viewList() throws Exception { 
		  List<Code>list=dao.viewList(); 
		  return list;
	  }

	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		Code result =dao.selectOne(vo);
		System.out.println("service result :" +result);
		return result;
	}

	@Override
	public int update(Code dto) throws Exception {
		int result = dao.update(dto);
		System.out.println("service result :" +result);
		return result;
	}
	
	

	@Override
	public int uelete(Code dto) throws Exception {
		return dao.uelete(dto);
	}

	

	@Override
	public int delete(CodeVo vo) throws Exception {
		return dao.delete(vo);
	}

	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cachedCodeArrayList.clear(); 
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}	
	
	public static List<Code> selectListCachedCode(String ccgseq) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCcgseq().equals(ccgseq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	public static String selectOneCachedCode(int code) throws Exception {
		String rt = "";
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCcseq().equals(Integer.toString(code))) {
				rt = codeRow.getCcnameko();
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	
	public static void clear() throws Exception {
		Code.cachedCodeArrayList.clear();
	}
	
	
	
	
	
	
	
	
	
}
