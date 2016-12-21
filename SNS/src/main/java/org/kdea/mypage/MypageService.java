package org.kdea.mypage;

import java.io.*;
import java.util.*;

import org.kdea.manager.ManagerDAO;
import org.kdea.manager.ManagerVO;
import org.kdea.members.MemberVO;
import org.kdea.promotion.PromotionVO;

import org.kdea.recodes.RecodeVO;
import org.kdea.video.VideoDAO;
import org.kdea.video.VideoVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.multipart.MultipartFile;

@Service
public class MypageService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate; // 설정파일에 빈으로 등록되었기 때문에 생성자나 Setter 없이 자동으로 주입
	
	@Autowired
	private MemberFileValidator MemberfileValidator;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	
	//비디오 북마크 리스트
	public List<VideoVO> getBookmarkVideoList(String key, String type, int page, String id) {
			MypageDAO dao= sqlSessionTemplate.getMapper(MypageDAO.class);
			
			return dao.getBookmarkVideoList(key,type,page,id);
	}

	// 비디오 북마크 리스트
	public List<RecodeVO> getBookmarkRecodeList(String key, String type, int page, String id) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);

		return dao.getBookmarkRecodeList(key, type, page, id);
	}

	// 홍보 북마크
	public List<PromotionVO> getBookmarkPromotionList(String key, String type, int page, String id) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		return dao.getBookmarkPromotion(key, type, page, id);
	}
	  
	
	// 내정보보기
	public MemberVO myInfo(String id) { 
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		return dao.info(id);
	}
	
	//내정보보기2
	public MemberVO myInfo2(int num) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		return dao.info2(num);
	}
	
	//내정보 수정
	public MemberVO update(MemberVO vo,BindingResult result) { // 회원정보수정
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		vo = this.fileSetting(vo, result);
		dao.update(vo);	
		vo.setProFilFileName(dao.getProfilfilename(vo).getProFilFileName());
		return vo;
	}
	
	
	
	//비밀번호 변경
	public boolean pwdCheck(MemberVO vo) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		String password = dao.pwdCheck(vo.getId());
		if (passwordEncoder.matches(vo.getPwd(), password)) {
			if (this.pwdUpdate(vo) <= 0) {
				return false;
			} else {
				return true;
			}
		}else {
			return false;
		}
	}
	
	public int pwdUpdate(MemberVO vo) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		String encodedPwd = passwordEncoder.encode(vo.getUpdatePwd());
		vo.setPwd(encodedPwd);
		return dao.pwdUpate(vo);
	}
	
	
	//회원 탈퇴
	public boolean deleteAccount(MemberVO vo) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		String password = dao.pwdCheck(vo.getId());
		if (passwordEncoder.matches(vo.getPwd(), password)) {
			vo.setPwd(password);
			dao.deleteAccount(vo);
			return true;
		}else{
			return false;
		}
	}
	
	//내가올린 비디오
	public List<VideoVO> getMyLoadVideoList(String key, String type, int page, VideoVO vo) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		return dao.getMyLoadVideoList(key, type, page, vo.getAuthor());
	}
	
	//내가 올린 녹음파일
	public List<RecodeVO> getMyLoadAudioList(String key, String type, int page, RecodeVO vo) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		return dao.getMyLoadAudioList(key, type, page, vo.getAuthor());
	}
	
	//내가 올린 홍보
	public List<PromotionVO> getMyLoadPromotionList(String key, String type, int page, PromotionVO vo) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		return dao.getMyLoadPromotionList(key,type,page,vo.getAuthor());
	}
	
	
	// 파일 하드에 저장
	public MemberVO fileSave(MemberVO vo) {

		InputStream inputStream = null;
		OutputStream outputStream = null;

		// 업로드된 파일을 임의의 경로로 이동한다
		MultipartFile file = vo.getProfilfile(); // 웹에서 서버로 업로드된 파일을 말한다.

		try {
			inputStream = file.getInputStream(); // 파일이 임시저장소에 저장이되고
			//////// 경로 변경
			File newFile = new File("D:/EclipseProject/SNS/src/main/webapp/resources/profileImage/" + vo.getProFilFileName()); // 지정해준
			
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
	
	
	//파일 정보 구하기
	public MemberVO fileSetting(MemberVO vo,BindingResult result){
		MultipartFile file = vo.getProfilfile();
		System.out.println("파일이름은 어떻게 되니?"+vo.getProfilfile().getOriginalFilename());
		MemberfileValidator.validate(vo, result); 

		
		String fileName = file.getOriginalFilename();
//		long filesize = vo.getProfilfile().getSize();

		vo.setProFilFileName(fileName);
		String[] token = fileName.split("\\.");
		vo.setExt(token[token.length-1]);
		return vo;
	}

	
	   public List<PromotionVO> bookMarkAlarm(String author) {
		      MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		      return dao.bookMarkAlarm(author);
		   }
		   
	
	
	   //프로필사진 구하기
		public VideoVO getUser(String id) {
			VideoDAO dao = sqlSessionTemplate.getMapper(VideoDAO.class);
			return dao.getUser(id);
		} 
		
	
		//신고
		//글 신고하기
		public boolean reportVideo(ManagerVO vo) {
			  MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
			  
			  //홍보는 클라이언트에서 가져온다.
			  String report = vo.getReportcontents();
			  String reporter = vo.getReporter();
			  
			  if(vo.getReporttype().equals("동영상")){
				  vo=dao.getVideo(vo);
				  vo.setReportcontents(report);
				  vo.setReporttype("동영상");
				  vo.setReporter(reporter);
			  }else if(vo.getReporttype().equals("녹음")){
				  vo=dao.getAudio(vo);
				  System.out.println(report);
				  vo.setReportcontents(report);
				  vo.setReporttype("녹음");
				  vo.setReporter(reporter);
			  }
			  
			  synchronized (vo) {
				  if(dao.report(vo)<=0) return false;
				  else return true;
			  }
		}
	
	
	
	
}
