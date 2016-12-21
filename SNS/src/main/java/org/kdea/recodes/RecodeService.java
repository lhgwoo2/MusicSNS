package org.kdea.recodes;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

@Service
public class RecodeService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	private FileValidator fileValidator;
	
	public int maxPage(){
		RecodeDAO dao= sqlSessionTemplate.getMapper(RecodeDAO.class);	
		return dao.max();
	}
	
	public List<RecodeVO> search(RecodeVO vo) {
		RecodeDAO dao= sqlSessionTemplate.getMapper(RecodeDAO.class);
		List<RecodeVO> list = new ArrayList<RecodeVO>();
		if(vo.getSelect()==null||vo.getSelect().equals("최신순")) {
			list = dao.search(vo);
		}else if(vo.getSelect().equals("인기순")) {
			list = dao.search2(vo);
		}
		return list;
	}
	
	//파일 업로드 
	public RecodeVO recodeUpload(RecodeVO vo,BindingResult result) {
		RecodeDAO dao= sqlSessionTemplate.getMapper(RecodeDAO.class);	
		vo = fileSetting(vo,result);	
		if(vo==null){
			return null;
		}

		dao.recodeUpload2(vo);		
		dao.recodeUpload(vo);
		RecodeVO vo1  = dao.getFilename(vo.getAuthor());	
		vo.setFilename(vo1.getFilename());
		return vo;
	}
	
	//북마크 하기
	public int mark(RecodeVO vo) {
		RecodeDAO dao= sqlSessionTemplate.getMapper(RecodeDAO.class);
		dao.likes(vo.getNum());
		return dao.mark(vo);
	}
	
	//북마크 해제하기
	public int markCancel(RecodeVO vo) {
		RecodeDAO dao= sqlSessionTemplate.getMapper(RecodeDAO.class);
		dao.likes_(vo.getNum());
	    return dao.markCancel(vo);	
	}
	
	//게시물 삭제
	public int delete(RecodeVO vo) {
		RecodeDAO dao= sqlSessionTemplate.getMapper(RecodeDAO.class);
		File f = new File("D:/EclipseProject/SNS/src/main/webapp/resources/recode/" + vo.getFilename());
		f.delete(); // 해당파일 삭제
		deleteRecodeBookmark(vo);
		return dao.delete(vo);
	}
	
	//녹음파일 북마크 삭제
	public void deleteRecodeBookmark(RecodeVO vo){
		RecodeDAO dao= sqlSessionTemplate.getMapper(RecodeDAO.class);
		dao.deleteRecodeBookmark(vo);
	}
	
	//파일 하드에 저장
	public RecodeVO fileSave(RecodeVO vo) {

		InputStream inputStream = null;
		OutputStream outputStream = null;

		// 업로드된 파일을 임의의 경로로 이동한다
		MultipartFile file = vo.getFile(); // 웹에서 서버로 업로드된 파일을 말한다.


		try {
			inputStream = file.getInputStream(); // 파일이 임시저장소에 저장이되고

			File newFile = new File("D:/EclipseProject/SNS/src/main/webapp/resources/recode/" + vo.getFilename()); // 지정해준
			// 경로에저장한다
			if (!newFile.exists()) {
				newFile.createNewFile(); // 새파일을만들어서
			}
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];

			while ((read = inputStream.read(bytes)) != -1) { // 데이터를저장한다
				outputStream.write(bytes, 0, read);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				inputStream.close();
				outputStream.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return vo;
	}
	
	//수정하기전에 정보 가져오기
	public RecodeVO getDesc(int num) {
		RecodeDAO dao = sqlSessionTemplate.getMapper(RecodeDAO.class);
		return dao.recodeDesc(num);

	}
	
	//녹음 정보 수정
	public RecodeVO recodeUpdate(RecodeVO vo,BindingResult result){
		
		vo = fileSetting(vo , result);
		if(vo==null){
			return null;
		}
		RecodeDAO dao= sqlSessionTemplate.getMapper(RecodeDAO.class);
		dao.recodeUpdate(vo);
		dao.recodeFileUpdate(vo);
		vo.setFilename(dao.getfilename2(vo).getFilename());
		
		return vo;
	}
	
	//파일 정보 구하는 메소드 
	public RecodeVO fileSetting(RecodeVO vo,BindingResult result){
		MultipartFile file = vo.getFile();
		fileValidator.validate(vo, result);
		if(result.hasErrors()){
			return null;
		}
		
		String fileName = file.getOriginalFilename();
		long filesize = vo.getFile().getSize();

		vo.setFilename(fileName);
		vo.setFilesize(filesize);

		String[] token = fileName.split("\\.");
		vo.setExt(token[token.length-1]);
		return vo;
	}

	
	//12월 12일 통합
	
	//첫번째 댓글
		public List<RecodeVO> firstComment(RecodeVO vo) {
			RecodeDAO dao = sqlSessionTemplate.getMapper(RecodeDAO.class);
			return dao.getComment(vo);
			
		} 
		//댓글 더보기
		public List<RecodeVO> getcomment(RecodeVO vo) {
			RecodeDAO dao = sqlSessionTemplate.getMapper(RecodeDAO.class);
			List<RecodeVO> list= dao.getComment(vo);
			return list;
		}
		//댓글 추가
		public RecodeVO setcomment(RecodeVO vo) {
			RecodeDAO dao = sqlSessionTemplate.getMapper(RecodeDAO.class);
			dao.setComment(vo);
			return dao.getOnecomment();
		}

		
		
		//12월 13일 통합
		//유저정보 가져오기
		public RecodeVO getUser(String id) {
			RecodeDAO dao = sqlSessionTemplate.getMapper(RecodeDAO.class);
			return dao.getUser(id);
		} 
		
	
	
}
