package org.kdea.members;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class MemberService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate; // �������Ͽ� ������ ��ϵǾ��� ������ �����ڳ� Setter ���� �ڵ����� ����

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
    @Autowired
    private EmailService emailService;
	
	public boolean add(MemberVO vo){
		MemberDAO dao = sqlSessionTemplate.getMapper(MemberDAO.class);
		String pwd = passwordEncoder.encode(vo.getPwd());
		vo.setPwd(pwd);
		String fileName  = "";
		String[] token = null;
		int add = 0;
		if(vo.getProfilfile()==null){
			vo.setProFilFileName("default.jpg");
			add= dao.add2(vo);
			
		}else{
			fileName = vo.getProfilfile().getOriginalFilename();
			token = fileName.split("\\.");
			vo.setProFilFileName((token[token.length-1]));
			add = dao.add(vo);
			vo.setProFilFileName(dao.proffn(vo.getId()));
			fileSave(vo);
		}
		if(0<add){
			return true;
		}else{
			return false;
		}
	}
    public String idCheck(MemberVO vo) {
    	MemberDAO dao= sqlSessionTemplate.getMapper(MemberDAO.class);
    	return dao.idCheck(vo.getId());
    }
    
	public void fileSave(MemberVO vo) {

		InputStream inputStream = null;
		OutputStream outputStream = null;
		MultipartFile file = vo.getProfilfile(); // ������ ������ ���ε�� ������ ���Ѵ�.
		try {
			inputStream = file.getInputStream(); // ������ �ӽ�����ҿ� �����̵ǰ�

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
	}
	
	//���̵� ã��
	public boolean searchIdAjax(MemberVO vo, HttpSession session) {
		MemberDAO dao = sqlSessionTemplate.getMapper(MemberDAO.class);
		String id = dao.searchId(vo);
		if(id!=null){
			try {
				
		        ServletContext application = session.getServletContext(); 
		        
		        String sId = session.getId();
		        application.setAttribute(sId, vo.getEmail());
		 
		        vo.setReceiver(vo.getEmail());
		        vo.setSubject(id);
		        emailService.sendMail(vo);

		        
			} catch (Exception e) {
				e.printStackTrace();
			}
			return true;
		}else{
			return false;
		}	
	}
	
	//��й�ȣ ã��
	public boolean searchPwdAjax(MemberVO vo,HttpSession session) {
		MemberDAO dao = sqlSessionTemplate.getMapper(MemberDAO.class);
		if(dao.idExist(vo)==1) {
			ServletContext application = session.getServletContext(); 
			String sId = session.getId();
			application.setAttribute(sId, vo.getId());	     
	        vo.setContent("��й�ȣ");
	        vo.setReceiver(vo.getEmail());
	        vo.setSubject(sId);
	        try {
				emailService.sendMail(vo);
			} catch (Exception e) {

				e.printStackTrace();
			}			
			return true;
		}
		return false;
	}
	
	//��й�ȣ ã�� �� ���ο� ��й�ȣ ����
	public int newPwd(MemberVO vo) {
		MemberDAO dao = sqlSessionTemplate.getMapper(MemberDAO.class);
		String encodedPwd = passwordEncoder.encode(vo.getPwd());
		vo.setPwd(encodedPwd);
		return dao.pwdUpate(vo);
		
	}
	
	//�̸��� �ߺ��˻�
	public boolean emailCheck(String receiver) {
		MemberDAO dao = sqlSessionTemplate.getMapper(MemberDAO.class);
		String str = dao.emailCheck(receiver);
		if(str!=null){
			return true;
		}else{
			return false;
		}
	}
	
   
}
