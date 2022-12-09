package com.september.interpark.modules.main;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;



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
	
	/*
	 * @Override public void uploadFiles(MultipartFile[] multipartFiles, Main dto,
	 * String tableName, int type, int maxNumber) throws Exception {
	 * 
	 * for(int i=0; i<multipartFiles.length; i++) {
	 * 
	 * if(!multipartFiles[i].isEmpty()) {
	 * 
	 * String className = dto.getClass().getSimpleName().toString().toLowerCase();
	 * String fileName = multipartFiles[i].getOriginalFilename(); String ext =
	 * fileName.substring(fileName.lastIndexOf(".") + 1); String uuid =
	 * UUID.randomUUID().toString(); String uuidFileName = uuid + "." + ext; String
	 * pathModule = className; String nowString = UtilDateTime.nowString(); String
	 * pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" +
	 * nowString.substring(8,10); String path = Constants.UPLOAD_PATH_PREFIX + "/" +
	 * pathModule + "/" + pathDate + "/"; String pathForView =
	 * Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate +
	 * "/";
	 * 
	 * File uploadPath = new File(path);
	 * 
	 * if (!uploadPath.exists()) { uploadPath.mkdir(); } else { // by pass }
	 * 
	 * multipartFiles[i].transferTo(new File(path + uuidFileName));
	 * 
	 * dto.setPath(pathForView); dto.setOriginalName(fileName);
	 * dto.setUuidName(uuidFileName); dto.setExt(ext);
	 * dto.setSize(multipartFiles[i].getSize());
	 * 
	 * dto.setTableName(tableName); dto.setType(type); // dto.setDefaultNy();
	 * dto.setSort(maxNumber + i); dto.setpSeq(dto.getAvatarSeq());
	 * 
	 * dao.insertUploaded(dto); } }
	 * 
	 * }
	 */

	/*
	 * @Override public void deleteFiles(String[] deleteSeq, String[]
	 * deletePathFile, Main dto, String tableName) throws Exception { for (int i=0;
	 * i<deleteSeq.length; i++) { File file = new
	 * File(Constants.UPLOAD_PATH_PREFIX_EXTERNAL + deletePathFile[i]);
	 * 
	 * boolean result = file.delete();
	 * 
	 * if(result) { dto.setSeq(deleteSeq[i]); dto.setTableName(tableName);
	 * dao.deleteUploaded(dto); } } }
	 */

	/*
	 * @Override public void ueleteFiles(String[] deleteSeq, String[]
	 * deletePathFile, Main dto, String tableName) throws Exception { for (int i=0;
	 * i<deleteSeq.length; i++) { // File file = new
	 * File(Constants.UPLOAD_PATH_PREFIX_EXTERNAL + deletePathFile[i]); // boolean
	 * result = file.delete();
	 * 
	 * // if(result) { dto.setSeq(deleteSeq[i]); dto.setTableName(tableName);
	 * dao.ueleteUploaded(dto); // } } }
	 */
	
	
	
	
	
	


	
	
	
	
	
	
	
	
	
	
	
}
