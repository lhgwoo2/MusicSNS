package org.kdea.recodes;

import java.util.List;

import org.kdea.promotion.PromotionVO;

public interface RecodeDAO {

	public int recodeUpload(RecodeVO vo);

	public int recodeUpload2(RecodeVO vo);

	public int max();

	public RecodeVO recodeDesc(int num);

	public int recodeUpdate(RecodeVO vo);
	
	public int recodeFileUpdate(RecodeVO vo);

	public RecodeVO getFilename(String author);

	public RecodeVO getfilename2(RecodeVO vo);

	public int delete(RecodeVO vo);
	
	//북마크
	public int mark(RecodeVO vo);
	//북마크 해제
	public int markCancel(RecodeVO vo);

	public List<RecodeVO> search(RecodeVO vo); //최신순
	
	public List<RecodeVO> search2(RecodeVO vo); //인기순
	//인기순에서 사용되는 좋아요 수 증가
	public int likes(int num);
	
	//인기순에서 사용되는 좋아요 수 감소
	public int likes_(int num);

	public void deleteRecodeBookmark(RecodeVO vo);

	
	//12월 12일 댓글 통합
	
	//홍보댓글 처음가져오기
	public List<RecodeVO> getComment(RecodeVO vo);

	//홍보댓글 저장
	public int setComment(RecodeVO vo);
	
	//홍보 댓글가져오기
	public RecodeVO getOnecomment();

	
	
	//12월 13일 추가
	//로그인 유저정보 가져오기
	public RecodeVO getUser(String id);
	
}
