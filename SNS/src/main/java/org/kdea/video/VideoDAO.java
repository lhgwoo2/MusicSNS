package org.kdea.video;

import java.util.List;

import org.kdea.manager.ManagerVO;


public interface VideoDAO {
	//동영상 뉴스피드 게시물
	public VideoVO list(VideoVO vo);
	//동영상 파일 추가
	public int videoUpload(VideoVO vo);
	public int videoUpload2(VideoVO vo);
	//동영상 파일명 구하기
	public VideoVO getFilename(String string);
	//게시물 삭제
	public int del(VideoVO vo);
	//맥스넘
	public int max();
	//게시물 수정
	public VideoVO videoDesc(int num);
	//동영상 수정
	public int videoUpdate(VideoVO vo);
	public int videoUpdate2(VideoVO vo);
	public VideoVO getUpdateFilename(int num);
	//북마크
	public int mark(VideoVO vo);
	//북마크 해제
	public int markCancel(VideoVO vo);
	
	//검색 하고 리스트
	public List<VideoVO> search(VideoVO vo); //최신순
	public List<VideoVO> search2(VideoVO vo); //인기순
	//인기순에서 사용하는 좋아요 수 추가
	public int likes(int num);
	//인기순에서 사용하는 좋아요 수 삭제
	public int likes_(int num);
	
	//비디오 북마크 삭제
	public void delVideoBookmark(VideoVO vo);
	

	
	//12월 12일 댓글 통합
	
	//홍보댓글 처음가져오기
	public List<VideoVO> getComment(VideoVO vo);

	//홍보댓글 저장
	public int setComment(VideoVO vo);
		
	//홍보 댓글가져오기
	public VideoVO getOnecomment();
	
	
	//12월 13일 추가
	//유저정보 가져오기
	public VideoVO getUser(String id);
	
	
}
