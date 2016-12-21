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
    	if (vo == null) throw new UsernameNotFoundException("ȸ�� ������ ã�� �� �����ϴ�.");

        //ROLE_USER�� DB�κ��� ������ �̿����� �����̶�� ������
    	
        GrantedAuthority role = new SimpleGrantedAuthority(vo.getAuthority());
        List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
        roles.add(role);
        User user = new User(username,vo.getPwd(), roles);
        // DB�κ��� ������ �̿��� ������ ���� ���
        
 
        return user;
    }
}