package org.kdea.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kdea.manager.ManagerVO;
import org.kdea.members.MemberVO;
import org.kdea.promotion.PromotionVO;
import org.kdea.recodes.RecodeVO;
import org.kdea.video.VideoVO;

public interface MypageDAO {
	
	//비디오 북마크 리스트가져오기
	public List<VideoVO> getBookmarkVideoList(@Param("key") String key, @Param("type")String type, @Param("page")int page, @Param("id")String id);
	
	//녹음파일 북마크 리스트 가져오기
	public List<RecodeVO> getBookmarkRecodeList(@Param("key")String key, @Param("type")String type, @Param("page")int page, @Param("id")String id);

	//홍보 북마크
    public List<PromotionVO> getBookmarkPromotion(@Param("key")String key, 
          @Param("type")String type, @Param("page")int page, @Param("id")String id);
    
    //내정보보기
	public MemberVO info(String id);
	public MemberVO info2(int num);
	
	//내정보 수정
	public int update(MemberVO vo);
	public MemberVO getProfilfilename(MemberVO vo);
	
	//비밀번호 변경
	public String pwdCheck(String id);
	public int pwdUpate(MemberVO vo);
	
	//회원탈퇴
	public int deleteAccount(MemberVO vo);
	
	//내가올린 비디오
	public List<VideoVO> getMyLoadVideoList(@Param("key")String key, @Param("type")String type, @Param("page")int page,@Param("author")String author);
	
	//내가 올린녹음
	public List<RecodeVO> getMyLoadAudioList(@Param("key")String key, @Param("type")String type, @Param("page")int page,@Param("author")String author);
	
	//내가 올린 홍보
	public List<PromotionVO> getMyLoadPromotionList(@Param("key")String key, @Param("type")String type, @Param("page")int page,@Param("author")String author);
	
	//홍보북마크알림
    public List<PromotionVO> bookMarkAlarm(String author);
	
	
	//글신고하기
	public int report(ManagerVO vo);
	
	//비디오 정보 가져오기
	public ManagerVO getVideo(ManagerVO vo);
	//오디오 정보가져오기
	public ManagerVO getAudio(ManagerVO vo);	
	//홍보 정보가져오기
	public ManagerVO getPromotion(ManagerVO vo);	
		
	

}
