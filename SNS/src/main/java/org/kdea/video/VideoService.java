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
		if(vo.getSelect()==null||vo.getSelect().equals("�ֽż�")) {
			list = dao.search(vo);
		}else if(vo.getSelect().equals("�α��")) {
			list = dao.search2(vo);
		}
		return list;
	}

	public int maxPage(){
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);	
		return dao.max();
	}

	
	//������ ���ε�
	public VideoVO videoUpload(VideoVO vo,BindingResult result) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		
		vo = fileSetting(vo,result);
		if(vo==null){
			return null;
		}
		//���ڵ� ���̺� ���ڵ� ���� ���̺�
		dao.videoUpload(vo);		
		dao.videoUpload2(vo);
		

		VideoVO vo1  = dao.getFilename(vo.getAuthor());
		vo.setFilename(vo1.getFilename());
		fileSave(vo);
		return vo;
	}
	
	//������ ����
	public VideoVO videoDesc(int num) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		return dao.videoDesc(num);
	}

	public VideoVO videoUpdate(VideoVO vo, BindingResult result) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		
		vo = fileSetting(vo,result);
		if(vo==null){
			System.out.println("���⿡ �ɸ�?");
			return null;
		}
		dao.videoUpdate(vo);		
		dao.videoUpdate2(vo);
		
		
		VideoVO vo1  = dao.getUpdateFilename(vo.getNum());
		vo.setFilename(vo1.getFilename());
		fileSave(vo);
		return vo;
	}
	
	//�Խù� ����
	public int del(VideoVO vo) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		File f = new File("D:/EclipseProject/SNS/src/main/webapp/resources/video/" + vo.getFilename());
	
		f.delete(); // �ش����� ����
		delVideoBookmark(vo);
		return dao.del(vo);
	}
	
	//���� �ϸ�ũ ����
	public void delVideoBookmark(VideoVO vo){
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		dao.delVideoBookmark(vo);
	}
	
	//�ϸ�ũ �ϱ�
	public int mark(VideoVO vo) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		dao.likes(vo.getNum());
		return dao.mark(vo);
	}
	
	//�ϸ�ũ �����ϱ�
	public int markCancel(VideoVO vo) {
		VideoDAO dao= sqlSessionTemplate.getMapper(VideoDAO.class);
		dao.likes_(vo.getNum());
	    return dao.markCancel(vo);	
	}
	
	//������ �ϵ忡 ����
	public VideoVO fileSave(VideoVO vo) {

		InputStream inputStream = null;
		OutputStream outputStream = null;
		MultipartFile file = vo.getFile(); // ������ ������ ���ε�� ������ ���Ѵ�.
		try {
			inputStream = file.getInputStream(); // ������ �ӽ�����ҿ� �����̵ǰ�

			File newFile = new File("D:/EclipseProject/SNS/src/main/webapp/resources/video/" + vo.getFilename()); // ��������
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

	//���� ����
	public VideoVO fileSetting(VideoVO vo,BindingResult result){
		
		// ���ε�� ������ ������ ��η� �̵��Ѵ�
		MultipartFile file = vo.getFile(); // ������ ������ ���ε�� ������ ���Ѵ�.
		videoFileValidator.validate(vo, result); // ���ε�� ������ �����ϰ� ����� result�� ��´�
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


	

	//12�� 12�� ����
	
	//ù��° ���
		public List<VideoVO> firstComment(VideoVO vo) {
			VideoDAO dao = sqlSessionTemplate.getMapper(VideoDAO.class);
			return dao.getComment(vo);
			
		} 
		//��� ������
		public List<VideoVO> getcomment(VideoVO vo) {
			VideoDAO dao = sqlSessionTemplate.getMapper(VideoDAO.class);
			List<VideoVO> list= dao.getComment(vo);
			return list;
		}
		//��� �߰�
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











