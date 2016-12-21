package org.kdea.members;

public interface MemberDAO {
	//회원가입(프로필 사진이 있을 경우)
	public int add(MemberVO vo);
	//프로필 사진이 없을경ㄷ우
	public int add2(MemberVO vo);
	
	public MemberVO login(String username);

	public String idCheck(String id);

	public String proffn(String id);
	
	//아이디 찾기
	public String searchId(MemberVO vo);
	
	//비밀번호 찾기
	public int idExist(MemberVO vo);
	
	//새로운 비밀번호 삽입
	public int pwdUpate(MemberVO vo);
	
	//이메일 중복검사
	public String emailCheck(String receiver);
	
}
