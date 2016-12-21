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
		if(vo.getSelect()==null||vo.getSelect().equals("�ֽż�")) {
			list = dao.search(vo);
		}else if(vo.getSelect().equals("�α��")) {
			list = dao.search2(vo);
		}
		return list;
	}
	
	//���� ���ε� 
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
	
	//�ϸ�ũ �ϱ�
	public int mark(RecodeVO vo) {
		RecodeDAO dao= sqlSessionTemplate.getMapper(RecodeDAO.class);
		dao.likes(vo.getNum());
		return dao.mark(vo);
	}
	
	//�ϸ�ũ �����ϱ�
	public int markCancel(RecodeVO vo) {
		RecodeDAO dao= sqlSessionTemplate.getMapper(RecodeDAO.class);
		dao.likes_(vo.getNum());
	    return dao.markCancel(vo);	
	}
	
	//�Խù� ����
	public int delete(RecodeVO vo) {
		RecodeDAO dao= sqlSessionTemplate.getMapper(RecodeDAO.class);
		File f = new File("D:/EclipseProject/SNS/src/main/webapp/resources/recode/" + vo.getFilename());
		f.delete(); // �ش����� ����
		deleteRecodeBookmark(vo);
		return dao.delete(vo);
	}
	
	//�������� �ϸ�ũ ����
	public void deleteRecodeBookmark(RecodeVO vo){
		RecodeDAO dao= sqlSessionTemplate.getMapper(RecodeDAO.class);
		dao.deleteRecodeBookmark(vo);
	}
	
	//���� �ϵ忡 ����
	public RecodeVO fileSave(RecodeVO vo) {

		InputStream inputStream = null;
		OutputStream outputStream = null;

		// ���ε�� ������ ������ ��η� �̵��Ѵ�
		MultipartFile file = vo.getFile(); // ������ ������ ���ε�� ������ ���Ѵ�.


		try {
			inputStream = file.getInputStream(); // ������ �ӽ�����ҿ� �����̵ǰ�

			File newFile = new File("D:/EclipseProject/SNS/src/main/webapp/resources/recode/" + vo.getFilename()); // ��������
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
	
	//�����ϱ����� ���� ��������
	public RecodeVO getDesc(int num) {
		RecodeDAO dao = sqlSessionTemplate.getMapper(RecodeDAO.class);
		return dao.recodeDesc(num);

	}
	
	//���� ���� ����
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
	
	//���� ���� ���ϴ� �޼ҵ� 
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

	
	//12�� 12�� ����
	
	//ù��° ���
		public List<RecodeVO> firstComment(RecodeVO vo) {
			RecodeDAO dao = sqlSessionTemplate.getMapper(RecodeDAO.class);
			return dao.getComment(vo);
			
		} 
		//��� ������
		public List<RecodeVO> getcomment(RecodeVO vo) {
			RecodeDAO dao = sqlSessionTemplate.getMapper(RecodeDAO.class);
			List<RecodeVO> list= dao.getComment(vo);
			return list;
		}
		//��� �߰�
		public RecodeVO setcomment(RecodeVO vo) {
			RecodeDAO dao = sqlSessionTemplate.getMapper(RecodeDAO.class);
			dao.setComment(vo);
			return dao.getOnecomment();
		}

		
		
		//12�� 13�� ����
		//�������� ��������
		public RecodeVO getUser(String id) {
			RecodeDAO dao = sqlSessionTemplate.getMapper(RecodeDAO.class);
			return dao.getUser(id);
		} 
		
	
	
}
