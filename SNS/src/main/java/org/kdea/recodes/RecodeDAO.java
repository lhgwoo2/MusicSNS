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
	
	//�ϸ�ũ
	public int mark(RecodeVO vo);
	//�ϸ�ũ ����
	public int markCancel(RecodeVO vo);

	public List<RecodeVO> search(RecodeVO vo); //�ֽż�
	
	public List<RecodeVO> search2(RecodeVO vo); //�α��
	//�α������ ���Ǵ� ���ƿ� �� ����
	public int likes(int num);
	
	//�α������ ���Ǵ� ���ƿ� �� ����
	public int likes_(int num);

	public void deleteRecodeBookmark(RecodeVO vo);

	
	//12�� 12�� ��� ����
	
	//ȫ����� ó����������
	public List<RecodeVO> getComment(RecodeVO vo);

	//ȫ����� ����
	public int setComment(RecodeVO vo);
	
	//ȫ�� ��۰�������
	public RecodeVO getOnecomment();

	
	
	//12�� 13�� �߰�
	//�α��� �������� ��������
	public RecodeVO getUser(String id);
	
}
