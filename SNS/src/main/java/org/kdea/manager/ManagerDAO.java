package org.kdea.manager;
	
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ManagerDAO {
	//�Ű� ����Ʈ
	public List<ManagerVO> list(@Param("page")int page, @Param("rpp") int rpp);
	//�Ű� ����
	public int delBoard(ManagerVO vo);
	
	//�Ű� �˻�
	public List<ManagerVO> getSearch(@Param("conten")String conten, @Param("key") String key);

	//�Ű� �󼼺���
	public ManagerVO desc(ManagerVO vo);
	//�Ű� ó������
	public int complete(ManagerVO vo);
	//�������� ��������
	public ManagerVO getUser(String id);
	

	
}
