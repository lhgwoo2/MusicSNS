package org.kdea.promotion;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kdea.manager.ManagerVO;
import org.kdea.video.VideoVO;

public interface PromotionDAO {
	
	
	//홍보리스트가져오기 - 수정부분 아이디저장관련
	public List<PromotionVO> getPromotion(@Param("key")String key, 
			@Param("type")String type, @Param("page")int page, @Param("id")String id);

	//홍보상세정보
	public PromotionVO getDesc(PromotionVO vo);

	//홍보댓글 처음가져오기
	public List<PromotionVO> getComment(PromotionVO vo);

	//홍보댓글 저장
	public int setComment(PromotionVO vo);
	
	//홍보 댓글가져오기
	public PromotionVO getOnecomment();

	public List<PromotionVO> getList();		//이건먼지 모르겠네

	//홍보 게시물 저장
	public int savePromotion(PromotionVO vo);
	
	//홍보 파일저장
	public int saveAttached(PromotionVO vo);

	//promotion 시퀀스 가져오기
	public Integer getSeq();

	// 북마크
	public int mark(PromotionVO vo);

	// 북마크 해제
	public int markCancel(PromotionVO vo);

	// 좋아요 증가
	public int likes(int num);

	// 좋아요 감소
	public int likes_(int num);

	//수정할 게시물 가져오기
	public PromotionVO getEdit(PromotionVO vo);

	//게시물 수정
	public int editPromotion(PromotionVO vo);
	
	
	//12월 8일 변경사항
	
	
	//날짜로 검색
	public List<PromotionVO> openingday(PromotionVO vo);
	
	//장르로 검색
	public List<PromotionVO> searchGenre(PromotionVO vo);

	
	
	//12월 13일 추가
	//로그인된 유저정보 가져오기
	public PromotionVO getUser(String id);
	
	//홍보 게시물 삭제 
	public int deletePromotion(PromotionVO vo);

	//홍보 북마크 삭제
	public void delVideoBookmark(PromotionVO vo);
	
	
	
}
