package org.kdea.video;

import java.util.List;

import org.kdea.manager.ManagerVO;


public interface VideoDAO {
	//������ �����ǵ� �Խù�
	public VideoVO list(VideoVO vo);
	//������ ���� �߰�
	public int videoUpload(VideoVO vo);
	public int videoUpload2(VideoVO vo);
	//������ ���ϸ� ���ϱ�
	public VideoVO getFilename(String string);
	//�Խù� ����
	public int del(VideoVO vo);
	//�ƽ���
	public int max();
	//�Խù� ����
	public VideoVO videoDesc(int num);
	//������ ����
	public int videoUpdate(VideoVO vo);
	public int videoUpdate2(VideoVO vo);
	public VideoVO getUpdateFilename(int num);
	//�ϸ�ũ
	public int mark(VideoVO vo);
	//�ϸ�ũ ����
	public int markCancel(VideoVO vo);
	
	//�˻� �ϰ� ����Ʈ
	public List<VideoVO> search(VideoVO vo); //�ֽż�
	public List<VideoVO> search2(VideoVO vo); //�α��
	//�α������ ����ϴ� ���ƿ� �� �߰�
	public int likes(int num);
	//�α������ ����ϴ� ���ƿ� �� ����
	public int likes_(int num);
	
	//���� �ϸ�ũ ����
	public void delVideoBookmark(VideoVO vo);
	

	
	//12�� 12�� ��� ����
	
	//ȫ����� ó����������
	public List<VideoVO> getComment(VideoVO vo);

	//ȫ����� ����
	public int setComment(VideoVO vo);
		
	//ȫ�� ��۰�������
	public VideoVO getOnecomment();
	
	
	//12�� 13�� �߰�
	//�������� ��������
	public VideoVO getUser(String id);
	
	
}
