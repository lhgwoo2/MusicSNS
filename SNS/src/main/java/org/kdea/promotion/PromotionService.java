package org.kdea.promotion;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.kdea.manager.ManagerVO;
import org.kdea.newspeed.NewsPeedDAO;
import org.kdea.video.VideoDAO;
import org.kdea.video.VideoVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class PromotionService {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	private PromotionDAO dao;
	
	//����Ʈ ��������
	public List<PromotionVO> getList(String key, String type, int page, String id) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		return dao.getPromotion(key,type,page,id);
	}
	//������ ��������
	public PromotionVO getDesc(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		return dao.getDesc(vo);
	}
	//ù��° ���
	public List<PromotionVO> firstComment(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		return dao.getComment(vo);
		
	} 
	//��� ������
	public List<PromotionVO> getcomment(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		List<PromotionVO> list= dao.getComment(vo);
		return list;
	}
	//��� �߰�
	public PromotionVO setcomment(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		dao.setComment(vo);
		return dao.getOnecomment();
	} 
	
	
	/////////////////////////////////
	
	
	
	 //���� ���ε� - ���� ������ ���ε�
	public boolean uploadPromotion(PromotionVO vo){
	         dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
	          InputStream inputStream = null;  
	          OutputStream outputStream = null;  
	          
	          //���ε�� ���ڿ� ��¥�� ��üȭ(openingday, endday)
	          vo=convertDate(vo);
	          
	          //������ ���� ��� �ٷ� ��������
	          if(vo.getImageFile()==null || vo.getImageFile().isEmpty()){
	             return save(vo);
	          }
	          //���� �̸� ��ȯ - DB��ȣ��.
	          vo=convertFilename(vo);

	          // ���Ϻ���
	          MultipartFile file = vo.getImageFile();  
	          String fileName = vo.getFilename(); 
	          System.out.println("�����̸�"+fileName);
	          
	          try {  
	              inputStream = file.getInputStream();  
	         
	              File newFile = new File("D:/EclipseProject/SNS/src/main/webapp/resources/promotionListImage/" + fileName);  
	              if (!newFile.exists()) {  
	                  newFile.createNewFile();  
	              }  
	              outputStream = new FileOutputStream(newFile);  
	              int read = 0;  
	              byte[] bytes = new byte[1024];  
	         
	              while ((read = inputStream.read(bytes)) != -1) {  
	                  outputStream.write(bytes, 0, read);  
	              }
	              
	              return save(vo); 
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
	         return false;
	      }
	   
	 //���� ���ε�2 - �����̸� �����ͺ��̽��� ����
	public boolean save(PromotionVO vo){
	         dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
	      
	         //������ �������� ����Ʈ �̹����� �ְ� ������.
	         if(vo.getImageFile()==null || vo.getImageFile().isEmpty()){
	               vo.setFilename("default.jpg");
	         }
	       
	         if(vo.getDetailRegion()==null || vo.getDetailRegion().length()==0){
	        	 vo.setDetailRegion(" ");
	         }
	         
	         synchronized (vo) {
	            if(dao.savePromotion(vo)<=0) return false;
	            int num = dao.getSeq();
	            vo.setNum(num);
	            if(dao.saveAttached(vo)<=0)return false;
	            else return true;
	        }
	         
	}

	//���ε� �� ���ڿ��� ��¥�� sql.Date ��üȭ
	public PromotionVO convertDate(PromotionVO vo){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		try {
			Date open = sdf.parse(vo.getOpeningdaystr());
			Date end = sdf.parse(vo.getEnddaystr());

			vo.setOpeningday(new java.sql.Timestamp(open.getTime()));
			vo.setEndday(new java.sql.Timestamp(end.getTime()));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	//�����̸� ��ȯ
	public PromotionVO convertFilename(PromotionVO vo){
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);  
		MultipartFile file = vo.getImageFile();  
	    String fileName = file.getOriginalFilename(); 
		System.out.println("�����̸� ��ȯ"+fileName);
	    String[] name = fileName.split("\\.");
	    
	    System.out.println("����name[0]"+name[0]);
	    System.out.println("����name[1]"+name[1]);
	    if(dao.getSeq()==null){
	    	String newfilename = 1+"."+name[1];
	    	vo.setFilename(newfilename);
	    }else{
	    	int num = dao.getSeq()+1;
	    	String newfilename = num+"."+name[1];
	    	vo.setFilename(newfilename);
	    }
	    
		return vo;
	}

	//�ϸ�ũ
	public int mark(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);  
		//likes ����
		dao.likes(vo.getNum());
		return dao.mark(vo);
	}
	
	//�ϸ�ũ ����
	public int markCancel(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);  
		//likes ����
		dao.likes_(vo.getNum());
		return dao.markCancel(vo);
	}
	
	//����������������
	public PromotionVO getEdit(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);  
		return dao.getEdit(vo);
	}
	
	//������ �����ϱ�
	public boolean editPromotion(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);  
		InputStream inputStream = null;  
        OutputStream outputStream = null;  
        
        //���ε�� ���ڿ� ��¥�� ��üȭ(openingday, endday)
        vo=convertDate(vo);
        
        
		//������ �������� ���� ��� ������ �״�� �ΰ� �Խù��� ����
        if(vo.getImageFile()==null || vo.getImageFile().isEmpty()){
        	System.out.println("����1");
        	 if(dao.editPromotion(vo)<=0)
             	{
            	 System.out.println("����3");
        		 return false;
             	}
             else {
            	 System.out.println("����3");
            	 return true;
             }
        }
        
        
        //�����̸� ã��(��ȯ�۾��� ���ؼ�, �Խù���ȣ�� ����) - ������ �ִ� ����
        MultipartFile file = vo.getImageFile();  
        String fileName = file.getOriginalFilename(); 
	    String[] name = fileName.split("\\.");
	    String newName = vo.getNum()+"."+name[1]; 
	    
	    System.out.println("�����̸�"+newName);
        
        //������ �ִ� ���� ����
        File deletefile = new File("D:/EclipseProject/SNS/src/main/webapp/resources/promotionListImage/" + newName);
		if(deletefile.exists()){
			System.out.println("��������"+newName);
			deletefile.delete();
		}
        
		
		// ���ο� ���� ���ε�
        try {  
            inputStream = file.getInputStream();  
       
            File newFile = new File("D:/EclipseProject/SNS/src/main/webapp/resources/promotionListImage/" + newName);  
            if (!newFile.exists()) {  
                newFile.createNewFile();  
            }  
            outputStream = new FileOutputStream(newFile);  
            int read = 0;  
            byte[] bytes = new byte[1024];  
       
            while ((read = inputStream.read(bytes)) != -1) {  
                outputStream.write(bytes, 0, read);  
            }
            
            if(dao.editPromotion(vo)<=0)
            	return false;
            else return true;
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
       return false;
	}

	
	
	//12�� 8�� �������
	//��¥�� �˻�
	public List<PromotionVO> openingday(PromotionVO vo) {
	    dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
	   return dao.openingday(vo);
	}
	
	//�帣�� �˻�
	public List<PromotionVO> searchGenre(PromotionVO vo) {
	    dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
	   return dao.searchGenre(vo);
	}
	
	
	// 12�� 13�� �߰�
	// �α��ε� �������� ��������
	public PromotionVO getUser(String id) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		return dao.getUser(id);
	}
	
	   
	//ȫ�� ����
	public boolean deletePromotion(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		vo=dao.getDesc(vo);
		delPromotionBookmark(vo);
		File f = new File("D:/EclipseProject/SNS/src/main/webapp/resources/promotionListImage/" + vo.getFilename());
		f.delete();		//ȫ�� ������ ����
		
		 synchronized (vo) {
	            if(dao.deletePromotion(vo)<=0) return false;
	            else return true;
	         }
		
	}
	
	//ȫ�� �ϸ�ũ ����
	public void delPromotionBookmark(PromotionVO vo){
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		dao.delVideoBookmark(vo);
	}
		

	
	
}
