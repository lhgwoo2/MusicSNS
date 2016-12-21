package org.kdea.mypage;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kdea.manager.ManagerVO;
import org.kdea.members.MemberVO;
import org.kdea.promotion.PromotionVO;
import org.kdea.recodes.RecodeVO;
import org.kdea.video.VideoVO;

public interface MypageDAO {
	
	//���� �ϸ�ũ ����Ʈ��������
	public List<VideoVO> getBookmarkVideoList(@Param("key") String key, @Param("type")String type, @Param("page")int page, @Param("id")String id);
	
	//�������� �ϸ�ũ ����Ʈ ��������
	public List<RecodeVO> getBookmarkRecodeList(@Param("key")String key, @Param("type")String type, @Param("page")int page, @Param("id")String id);

	//ȫ�� �ϸ�ũ
    public List<PromotionVO> getBookmarkPromotion(@Param("key")String key, 
          @Param("type")String type, @Param("page")int page, @Param("id")String id);
    
    //����������
	public MemberVO info(String id);
	public MemberVO info2(int num);
	
	//������ ����
	public int update(MemberVO vo);
	public MemberVO getProfilfilename(MemberVO vo);
	
	//��й�ȣ ����
	public String pwdCheck(String id);
	public int pwdUpate(MemberVO vo);
	
	//ȸ��Ż��
	public int deleteAccount(MemberVO vo);
	
	//�����ø� ����
	public List<VideoVO> getMyLoadVideoList(@Param("key")String key, @Param("type")String type, @Param("page")int page,@Param("author")String author);
	
	//���� �ø�����
	public List<RecodeVO> getMyLoadAudioList(@Param("key")String key, @Param("type")String type, @Param("page")int page,@Param("author")String author);
	
	//���� �ø� ȫ��
	public List<PromotionVO> getMyLoadPromotionList(@Param("key")String key, @Param("type")String type, @Param("page")int page,@Param("author")String author);
	
	//ȫ���ϸ�ũ�˸�
    public List<PromotionVO> bookMarkAlarm(String author);
	
	
	//�۽Ű��ϱ�
	public int report(ManagerVO vo);
	
	//���� ���� ��������
	public ManagerVO getVideo(ManagerVO vo);
	//����� ������������
	public ManagerVO getAudio(ManagerVO vo);	
	//ȫ�� ������������
	public ManagerVO getPromotion(ManagerVO vo);	
		
	

}
