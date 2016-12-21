package org.kdea.newspeed;


import java.util.ArrayList;
import java.util.List;

import org.kdea.manager.ManagerVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsPeedService {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate; // 설정파일에 빈으로 등록되었기 때문에 생성자나 Setter 없이 자동으로 주입

	
	//동영상 최대페이지 
	public List<Integer> maxPage(){
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class);	
		List<Integer> maxpage = new ArrayList<Integer>();
		maxpage.add(dao.videomax());
		maxpage.add(dao.recodemax());
		maxpage.add(dao.promotionmax());
		return maxpage ;
	}

	//동영상 정보 가져오기
	public NewsPeedVO newsPeedVideo(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class);
		return dao.getVideo(vo);
	}

	//레코드 정보 가져오기
	public NewsPeedVO newsPeedRecode(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class);
		return dao.getRecode(vo);
	}

	//홍보 정보 가져오기
	public NewsPeedVO newsPeedpromotion(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class);
		return dao.getPromotion(vo);
	}
	
	//비디오 북마크
	public int videoMark(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class);
		dao.videoLikes(vo.getNum());
		return dao.videoMark(vo);
	}
	
	//레코드 북마크
	public int recodeMark(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class);
		dao.recodeLikes(vo.getNum());
		return dao.recodeMark(vo);
	}
	
	//홍보 북마크
	public int promotionMark(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class); 
		dao.promotionLikes(vo.getNum());
		return dao.promotionMark(vo);
	}

	//비디오 북마크 취소
	public int videoMarkCancel(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class); 
		dao.videoLikes_(vo.getNum());
		return dao.videoMarkCancel(vo);
	}

	//레코드 북마크 취소
	public int recodeMarkCancel(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class); 
		dao.recodelikes_(vo.getNum());
		return dao.recodeMarkCancel(vo);	
	}

	//홍보 북마크 취소
	public int promotionMarkCancel(NewsPeedVO vo) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class); 
		dao.promotionLikes_(vo.getNum());
		return dao.promotionMarkCancel(vo);
	}

	
	//12월 13일 추가사항
	//유저정보 가져오기
	public NewsPeedVO getUser(String id) {
		NewsPeedDAO dao= sqlSessionTemplate.getMapper(NewsPeedDAO.class); 
		return dao.getUser(id);
	}
	
	

	
	

	
}
