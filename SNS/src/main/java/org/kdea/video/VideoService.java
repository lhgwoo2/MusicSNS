package org.kdea.video;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import org.kdea.manager.ManagerVO;
import org.kdea.promotion.PromotionDAO;
import org.kdea.recodes.RecodeVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

@Service
public class VideoService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	private VideoFileValidator videoFileValidator;

	public List<VideoVO> search(VideoVO vo) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		List<VideoVO> list = null;
		if(vo.getSelect()==null||vo.getSelect().equals("최신순")) {
			list = dao.search(vo);
		}else if(vo.getSelect().equals("인기순")) {
			list = dao.search2(vo);
		}
		return list;
	}

	public int maxPage(){
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);	
		return dao.max();
	}

	
	//동영상 업로드
	public VideoVO videoUpload(VideoVO vo,BindingResult result) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		
		vo = fileSetting(vo,result);
		if(vo==null){
			return null;
		}
		//레코드 테이블 레코드 파일 테이블
		dao.videoUpload(vo);		
		dao.videoUpload2(vo);
		

		VideoVO vo1  = dao.getFilename(vo.getAuthor());
		vo.setFilename(vo1.getFilename());
		fileSave(vo);
		return vo;
	}
	
	//동영상 수정
	public VideoVO videoDesc(int num) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		return dao.videoDesc(num);
	}

	public VideoVO videoUpdate(VideoVO vo, BindingResult result) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		
		vo = fileSetting(vo,result);
		if(vo==null){
			System.out.println("여기에 걸림?");
			return null;
		}
		dao.videoUpdate(vo);		
		dao.videoUpdate2(vo);
		
		
		VideoVO vo1  = dao.getUpdateFilename(vo.getNum());
		vo.setFilename(vo1.getFilename());
		fileSave(vo);
		return vo;
	}
	
	//게시물 삭제
	public int del(VideoVO vo) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		File f = new File("D:/EclipseProject/SNS/src/main/webapp/resources/video/" + vo.getFilename());
	
		f.delete(); // 해당파일 삭제
		delVideoBookmark(vo);
		return dao.del(vo);
	}
	
	//비디오 북마크 삭제
	public void delVideoBookmark(VideoVO vo){
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		dao.delVideoBookmark(vo);
	}
	
	//북마크 하기
	public int mark(VideoVO vo) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		dao.likes(vo.getNum());
		return dao.mark(vo);
	}
	
	//북마크 해제하기
	public int markCancel(VideoVO vo) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		dao.likes_(vo.getNum());
	    return dao.markCancel(vo);	
	}
	
	//동영상 하드에 저장
	public VideoVO fileSave(VideoVO vo) {

		InputStream inputStream = null;
		OutputStream outputStream = null;
		MultipartFile file = vo.getFile(); // 웹에서 서버로 업로드된 파일을 말한다.
		try {
			inputStream = file.getInputStream(); // 파일이 임시저장소에 저장이되고

			File newFile = new File("D:/EclipseProject/SNS/src/main/webapp/resources/video/" + vo.getFilename()); // 지정해준
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
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				inputStream.close();
				outputStream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return vo;
	}

	//파일 셋팅
	public VideoVO fileSetting(VideoVO vo,BindingResult result){
		
		// 업로드된 파일을 임의의 경로로 이동한다
		MultipartFile file = vo.getFile(); // 웹에서 서버로 업로드된 파일을 말한다.
		videoFileValidator.validate(vo, result); // 업로드된 파일을 검증하고 결과를 result에 담는다
		if(result.hasErrors()){
				return null;
		}
		
		String fileName = file.getOriginalFilename();
		String[] token = fileName.split("\\.");
		long filesize = vo.getFile().getSize();
		vo.setFilesize(filesize);
		vo.setFilename(fileName);
		vo.setExt(token[token.length-1]);
		
		return vo;
	}


	

	//12월 12일 통합
	
	//첫번째 댓글
		public List<VideoVO> firstComment(VideoVO vo) {
			VideoDAO dao = sqlSessionTemplate.getMapper(VideoDAO.class);
			return dao.getComment(vo);
			
		} 
		//댓글 더보기
		public List<VideoVO> getcomment(VideoVO vo) {
			VideoDAO dao = sqlSessionTemplate.getMapper(VideoDAO.class);
			List<VideoVO> list= dao.getComment(vo);
			return list;
		}
		//댓글 추가
		public VideoVO setcomment(VideoVO vo) {
			VideoDAO dao = sqlSessionTemplate.getMapper(VideoDAO.class);
			System.out.println(vo.getRef()+','+vo.getAuthor()+','+vo.getContents()+','+vo.getCommentref());
			dao.setComment(vo);
			return dao.getOnecomment();
		}

		public VideoVO getUser(String id) {
			VideoDAO dao = sqlSessionTemplate.getMapper(VideoDAO.class);
			return dao.getUser(id);
		} 
		
	

}











