package org.kdea.qna;
	
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface QnaDAO {
	//추가하기
	public int addBoard(QnaVO vo);
	//글읽기
	public QnaVO getBoard(String author);
	//상세보기
	public QnaVO desc(QnaVO vo);
	public int modiBoard(QnaVO vo);
	//수정하기
	public int update(QnaVO vo);
	//댓글
	public int getComm(QnaVO vo);
	//리스트
	public List<QnaVO> list(@Param("page")int page, @Param("rpp") int rpp);
	//삭제
	public int delBoard(QnaVO vo);
	//검색
	public List<QnaVO> getSearch(@Param("conten")String conten, @Param("key") String key);
	
	//유저정보 가져오기
	public QnaVO getUser(String id);
	
	
	
}
