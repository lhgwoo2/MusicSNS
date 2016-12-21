package org.kdea.newspeed;

import org.kdea.manager.ManagerVO;
import org.kdea.video.VideoVO;

public interface NewsPeedDAO {
	
	//비디오 최대페이지
	public int videomax();
	//레코드 최대 페이지
	public int recodemax();
	//홍보 최대 페이지
	public int promotionmax();
	//비디오 가져오기
	public NewsPeedVO getVideo(NewsPeedVO vo);
	//레코드 가져오기
	public NewsPeedVO getRecode(NewsPeedVO vo);
	//홍보 가져오기
	public NewsPeedVO getPromotion(NewsPeedVO vo);

	//비디오 북마크
	public int videoLikes(int num); //비디오 좋아요
	public int videoMark(NewsPeedVO vo);
	//비디오 북마크 취소
	public void videoLikes_(int num);
	public int videoMarkCancel(NewsPeedVO vo);
	
	//레코드 
	public int recodeLikes(int num);//레코드 좋아요
	public int recodeMark(NewsPeedVO vo);
	//레코드 북마크 취소
	public void recodelikes_(int num);
	public int recodeMarkCancel(NewsPeedVO vo);
	
	//홍보 북마크
	public int promotionLikes(int num); //홍보 좋아요
	public int promotionMark(NewsPeedVO vo);
	//홍보 북마크 취소
	public void promotionLikes_(int num);
	public int promotionMarkCancel(NewsPeedVO vo);
	
	
	//12월 13일 추가
	//유저정보 가져오기
	public NewsPeedVO getUser(String id);
	
	
	   public int reportVideo(ManagerVO vo);


	
	
	
}
