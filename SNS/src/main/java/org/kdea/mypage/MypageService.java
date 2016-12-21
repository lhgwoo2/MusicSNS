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
	private SqlSessionTemplate sqlSessionTemplate; // �������Ͽ� ������ ��ϵǾ��� ������ �����ڳ� Setter ���� �ڵ����� ����
	
	@Autowired
	private MemberFileValidator MemberfileValidator;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	
	//���� �ϸ�ũ ����Ʈ
	public List<VideoVO> getBookmarkVideoList(String key, String type, int page, String id) {
			MypageDAO dao= sqlSessionTemplate.getMapper(MypageDAO.class);
			
			return dao.getBookmarkVideoList(key,type,page,id);
	}

	// ���� �ϸ�ũ ����Ʈ
	public List<RecodeVO> getBookmarkRecodeList(String key, String type, int page, String id) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);

		return dao.getBookmarkRecodeList(key, type, page, id);
	}

	// ȫ�� �ϸ�ũ
	public List<PromotionVO> getBookmarkPromotionList(String key, String type, int page, String id) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		return dao.getBookmarkPromotion(key, type, page, id);
	}
	  
	
	// ����������
	public MemberVO myInfo(String id) { 
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		return dao.info(id);
	}
	
	//����������2
	public MemberVO myInfo2(int num) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		return dao.info2(num);
	}
	
	//������ ����
	public MemberVO update(MemberVO vo,BindingResult result) { // ȸ����������
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		vo = this.fileSetting(vo, result);
		dao.update(vo);	
		vo.setProFilFileName(dao.getProfilfilename(vo).getProFilFileName());
		return vo;
	}
	
	
	
	//��й�ȣ ����
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
	
	
	//ȸ�� Ż��
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
	
	//�����ø� ����
	public List<VideoVO> getMyLoadVideoList(String key, String type, int page, VideoVO vo) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		return dao.getMyLoadVideoList(key, type, page, vo.getAuthor());
	}
	
	//���� �ø� ��������
	public List<RecodeVO> getMyLoadAudioList(String key, String type, int page, RecodeVO vo) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		return dao.getMyLoadAudioList(key, type, page, vo.getAuthor());
	}
	
	//���� �ø� ȫ��
	public List<PromotionVO> getMyLoadPromotionList(String key, String type, int page, PromotionVO vo) {
		MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
		return dao.getMyLoadPromotionList(key,type,page,vo.getAuthor());
	}
	
	
	// ���� �ϵ忡 ����
	public MemberVO fileSave(MemberVO vo) {

		InputStream inputStream = null;
		OutputStream outputStream = null;

		// ���ε�� ������ ������ ��η� �̵��Ѵ�
		MultipartFile file = vo.getProfilfile(); // ������ ������ ���ε�� ������ ���Ѵ�.

		try {
			inputStream = file.getInputStream(); // ������ �ӽ�����ҿ� �����̵ǰ�
			//////// ��� ����
			File newFile = new File("D:/EclipseProject/SNS/src/main/webapp/resources/profileImage/" + vo.getProFilFileName()); // ��������
			
			// ��ο������Ѵ�
			if (!newFile.exists()) {
				newFile.createNewFile(); // ������������
			}
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];

			while ((read = inputStream.read(bytes)) != -1) { // �����͸������Ѵ�
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
	
	
	//���� ���� ���ϱ�
	public MemberVO fileSetting(MemberVO vo,BindingResult result){
		MultipartFile file = vo.getProfilfile();
		System.out.println("�����̸��� ��� �Ǵ�?"+vo.getProfilfile().getOriginalFilename());
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
		   
	
	
	   //�����ʻ��� ���ϱ�
		public VideoVO getUser(String id) {
			VideoDAO dao = sqlSessionTemplate.getMapper(VideoDAO.class);
			return dao.getUser(id);
		} 
		
	
		//�Ű�
		//�� �Ű��ϱ�
		public boolean reportVideo(ManagerVO vo) {
			  MypageDAO dao = sqlSessionTemplate.getMapper(MypageDAO.class);
			  
			  //ȫ���� Ŭ���̾�Ʈ���� �����´�.
			  String report = vo.getReportcontents();
			  String reporter = vo.getReporter();
			  
			  if(vo.getReporttype().equals("������")){
				  vo=dao.getVideo(vo);
				  vo.setReportcontents(report);
				  vo.setReporttype("������");
				  vo.setReporter(reporter);
			  }else if(vo.getReporttype().equals("����")){
				  vo=dao.getAudio(vo);
				  System.out.println(report);
				  vo.setReportcontents(report);
				  vo.setReporttype("����");
				  vo.setReporter(reporter);
			  }
			  
			  synchronized (vo) {
				  if(dao.report(vo)<=0) return false;
				  else return true;
			  }
		}
	
	
	
	
}
