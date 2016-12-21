package org.kdea.promotion;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.kdea.manager.ManagerVO;
import org.kdea.video.VideoVO;

public interface PromotionDAO {
	
	
	//ȫ������Ʈ�������� - �����κ� ���̵��������
	public List<PromotionVO> getPromotion(@Param("key")String key, 
			@Param("type")String type, @Param("page")int page, @Param("id")String id);

	//ȫ��������
	public PromotionVO getDesc(PromotionVO vo);

	//ȫ����� ó����������
	public List<PromotionVO> getComment(PromotionVO vo);

	//ȫ����� ����
	public int setComment(PromotionVO vo);
	
	//ȫ�� ��۰�������
	public PromotionVO getOnecomment();

	public List<PromotionVO> getList();		//�̰Ǹ��� �𸣰ڳ�

	//ȫ�� �Խù� ����
	public int savePromotion(PromotionVO vo);
	
	//ȫ�� ��������
	public int saveAttached(PromotionVO vo);

	//promotion ������ ��������
	public Integer getSeq();

	// �ϸ�ũ
	public int mark(PromotionVO vo);

	// �ϸ�ũ ����
	public int markCancel(PromotionVO vo);

	// ���ƿ� ����
	public int likes(int num);

	// ���ƿ� ����
	public int likes_(int num);

	//������ �Խù� ��������
	public PromotionVO getEdit(PromotionVO vo);

	//�Խù� ����
	public int editPromotion(PromotionVO vo);
	
	
	//12�� 8�� �������
	
	
	//��¥�� �˻�
	public List<PromotionVO> openingday(PromotionVO vo);
	
	//�帣�� �˻�
	public List<PromotionVO> searchGenre(PromotionVO vo);

	
	
	//12�� 13�� �߰�
	//�α��ε� �������� ��������
	public PromotionVO getUser(String id);
	
	//ȫ�� �Խù� ���� 
	public int deletePromotion(PromotionVO vo);

	//ȫ�� �ϸ�ũ ����
	public void delVideoBookmark(PromotionVO vo);
	
	
	
}
