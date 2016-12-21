package org.kdea.manager;
	
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ManagerDAO {
	//신고물 리스트
	public List<ManagerVO> list(@Param("page")int page, @Param("rpp") int rpp);
	//신고물 삭제
	public int delBoard(ManagerVO vo);
	
	//신고물 검색
	public List<ManagerVO> getSearch(@Param("conten")String conten, @Param("key") String key);

	//신고물 상세보기
	public ManagerVO desc(ManagerVO vo);
	//신고물 처리상태
	public int complete(ManagerVO vo);
	//유저정보 가져오기
	public ManagerVO getUser(String id);
	

	
}
