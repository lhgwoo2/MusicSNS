package org.kdea.members;

public interface MemberDAO {
	//ȸ������(������ ������ ���� ���)
	public int add(MemberVO vo);
	//������ ������ �����椧��
	public int add2(MemberVO vo);
	
	public MemberVO login(String username);

	public String idCheck(String id);

	public String proffn(String id);
	
	//���̵� ã��
	public String searchId(MemberVO vo);
	
	//��й�ȣ ã��
	public int idExist(MemberVO vo);
	
	//���ο� ��й�ȣ ����
	public int pwdUpate(MemberVO vo);
	
	//�̸��� �ߺ��˻�
	public String emailCheck(String receiver);
	
}
