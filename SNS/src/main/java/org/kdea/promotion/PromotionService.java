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
	
	//리스트 가져오기
	public List<PromotionVO> getList(String key, String type, int page, String id) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		return dao.getPromotion(key,type,page,id);
	}
	//상세정보 가져오기
	public PromotionVO getDesc(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		return dao.getDesc(vo);
	}
	//첫번째 댓글
	public List<PromotionVO> firstComment(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		return dao.getComment(vo);
		
	} 
	//댓글 더보기
	public List<PromotionVO> getcomment(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		List<PromotionVO> list= dao.getComment(vo);
		return list;
	}
	//댓글 추가
	public PromotionVO setcomment(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		dao.setComment(vo);
		return dao.getOnecomment();
	} 
	
	
	/////////////////////////////////
	
	
	
	 //파일 업로드 - 파일 서버에 업로드
	public boolean uploadPromotion(PromotionVO vo){
	         dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
	          InputStream inputStream = null;  
	          OutputStream outputStream = null;  
	          
	          //업로드된 문자열 날짜를 객체화(openingday, endday)
	          vo=convertDate(vo);
	          
	          //파일이 없는 경우 바로 저장으로
	          if(vo.getImageFile()==null || vo.getImageFile().isEmpty()){
	             return save(vo);
	          }
	          //파일 이름 변환 - DB번호로.
	          vo=convertFilename(vo);

	          // 파일복사
	          MultipartFile file = vo.getImageFile();  
	          String fileName = vo.getFilename(); 
	          System.out.println("파일이름"+fileName);
	          
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
	   
	 //파일 업로드2 - 파일이름 데이터베이스에 저장
	public boolean save(PromotionVO vo){
	         dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
	      
	         //파일이 없을때는 디폴트 이미지를 넣고 끝낸다.
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

	//업로드 된 문자열의 날짜를 sql.Date 객체화
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
	
	//파일이름 변환
	public PromotionVO convertFilename(PromotionVO vo){
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);  
		MultipartFile file = vo.getImageFile();  
	    String fileName = file.getOriginalFilename(); 
		System.out.println("파일이름 변환"+fileName);
	    String[] name = fileName.split("\\.");
	    
	    System.out.println("파일name[0]"+name[0]);
	    System.out.println("파일name[1]"+name[1]);
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

	//북마크
	public int mark(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);  
		//likes 증가
		dao.likes(vo.getNum());
		return dao.mark(vo);
	}
	
	//북마크 해제
	public int markCancel(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);  
		//likes 감소
		dao.likes_(vo.getNum());
		return dao.markCancel(vo);
	}
	
	//수정정보가져오기
	public PromotionVO getEdit(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);  
		return dao.getEdit(vo);
	}
	
	//데이터 수정하기
	public boolean editPromotion(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);  
		InputStream inputStream = null;  
        OutputStream outputStream = null;  
        
        //업로드된 문자열 날짜를 객체화(openingday, endday)
        vo=convertDate(vo);
        
        
		//파일이 수정되지 않은 경우 파일은 그대로 두고 게시물만 수정
        if(vo.getImageFile()==null || vo.getImageFile().isEmpty()){
        	System.out.println("여기1");
        	 if(dao.editPromotion(vo)<=0)
             	{
            	 System.out.println("여기3");
        		 return false;
             	}
             else {
            	 System.out.println("여기3");
            	 return true;
             }
        }
        
        
        //파일이름 찾기(변환작업을 통해서, 게시물번호와 같다) - 기존에 있는 파일
        MultipartFile file = vo.getImageFile();  
        String fileName = file.getOriginalFilename(); 
	    String[] name = fileName.split("\\.");
	    String newName = vo.getNum()+"."+name[1]; 
	    
	    System.out.println("파일이름"+newName);
        
        //기존에 있던 파일 삭제
        File deletefile = new File("D:/EclipseProject/SNS/src/main/webapp/resources/promotionListImage/" + newName);
		if(deletefile.exists()){
			System.out.println("파일존재"+newName);
			deletefile.delete();
		}
        
		
		// 새로운 파일 업로드
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

	
	
	//12월 8일 변경사항
	//날짜로 검색
	public List<PromotionVO> openingday(PromotionVO vo) {
	    dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
	   return dao.openingday(vo);
	}
	
	//장르로 검색
	public List<PromotionVO> searchGenre(PromotionVO vo) {
	    dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
	   return dao.searchGenre(vo);
	}
	
	
	// 12월 13일 추가
	// 로그인된 유저정보 가져오기
	public PromotionVO getUser(String id) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		return dao.getUser(id);
	}
	
	   
	//홍보 삭제
	public boolean deletePromotion(PromotionVO vo) {
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		vo=dao.getDesc(vo);
		delPromotionBookmark(vo);
		File f = new File("D:/EclipseProject/SNS/src/main/webapp/resources/promotionListImage/" + vo.getFilename());
		f.delete();		//홍보 포스터 삭제
		
		 synchronized (vo) {
	            if(dao.deletePromotion(vo)<=0) return false;
	            else return true;
	         }
		
	}
	
	//홍보 북마크 삭제
	public void delPromotionBookmark(PromotionVO vo){
		dao = sqlSessionTemplate.getMapper(PromotionDAO.class);
		dao.delVideoBookmark(vo);
	}
		

	
	
}
