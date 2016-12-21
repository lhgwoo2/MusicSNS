package org.kdea.qna;
	
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface QnaDAO {
	//�߰��ϱ�
	public int addBoard(QnaVO vo);
	//���б�
	public QnaVO getBoard(String author);
	//�󼼺���
	public QnaVO desc(QnaVO vo);
	public int modiBoard(QnaVO vo);
	//�����ϱ�
	public int update(QnaVO vo);
	//���
	public int getComm(QnaVO vo);
	//����Ʈ
	public List<QnaVO> list(@Param("page")int page, @Param("rpp") int rpp);
	//����
	public int delBoard(QnaVO vo);
	//�˻�
	public List<QnaVO> getSearch(@Param("conten")String conten, @Param("key") String key);
	
	//�������� ��������
	public QnaVO getUser(String id);
	
	
	
}
