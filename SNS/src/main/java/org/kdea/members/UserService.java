package org.kdea.members;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
 
@Service
public class UserService implements UserDetailsService {
	
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	

    public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException 
    {
    	MemberDAO dao= sqlSessionTemplate.getMapper(MemberDAO.class);

    	MemberVO vo = dao.login(username);
    	if (vo == null) throw new UsernameNotFoundException("회원 정보를 찾을 수 없습니다.");

        //ROLE_USER는 DB로부터 가져온 이용자의 권한이라고 간주함
    	
        GrantedAuthority role = new SimpleGrantedAuthority(vo.getAuthority());
        List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
        roles.add(role);
        User user = new User(username,vo.getPwd(), roles);
        // DB로부터 가져온 이용자 정보가 없을 경우
        
 
        return user;
    }
}