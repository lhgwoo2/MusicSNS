package org.kdea.newspeed;

import org.kdea.manager.ManagerVO;
import org.kdea.video.VideoVO;

public interface NewsPeedDAO {
	
	//���� �ִ�������
	public int videomax();
	//���ڵ� �ִ� ������
	public int recodemax();
	//ȫ�� �ִ� ������
	public int promotionmax();
	//���� ��������
	public NewsPeedVO getVideo(NewsPeedVO vo);
	//���ڵ� ��������
	public NewsPeedVO getRecode(NewsPeedVO vo);
	//ȫ�� ��������
	public NewsPeedVO getPromotion(NewsPeedVO vo);

	//���� �ϸ�ũ
	public int videoLikes(int num); //���� ���ƿ�
	public int videoMark(NewsPeedVO vo);
	//���� �ϸ�ũ ���
	public void videoLikes_(int num);
	public int videoMarkCancel(NewsPeedVO vo);
	
	//���ڵ� 
	public int recodeLikes(int num);//���ڵ� ���ƿ�
	public int recodeMark(NewsPeedVO vo);
	//���ڵ� �ϸ�ũ ���
	public void recodelikes_(int num);
	public int recodeMarkCancel(NewsPeedVO vo);
	
	//ȫ�� �ϸ�ũ
	public int promotionLikes(int num); //ȫ�� ���ƿ�
	public int promotionMark(NewsPeedVO vo);
	//ȫ�� �ϸ�ũ ���
	public void promotionLikes_(int num);
	public int promotionMarkCancel(NewsPeedVO vo);
	
	
	//12�� 13�� �߰�
	//�������� ��������
	public NewsPeedVO getUser(String id);
	
	
	   public int reportVideo(ManagerVO vo);


	
	
	
}
