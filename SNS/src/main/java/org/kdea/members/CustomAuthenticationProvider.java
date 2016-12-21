package org.kdea.members;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import java.util.Collection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
 
public class CustomAuthenticationProvider implements AuthenticationProvider 
{
    @Autowired
    UserService userService;
 
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;
 
    

    public Authentication authenticate(Authentication authentication) throws AuthenticationException 
    {
        String username = authentication.getName();
        String password = (String) authentication.getCredentials();
 
        User user = null;
        Collection<? extends GrantedAuthority> authorities = null;
 
        try {
            user = (User)userService.loadUserByUsername(username);
            authorities = user.getAuthorities();
            // �̿��ڰ� �α��� ������ �Է��� ��й�ȣ�� DB�κ��� ������ ��ȣȭ�� ��й�ȣ�� ���Ѵ�
            if (!passwordEncoder.matches(password, user.getPassword())) 
                throw new BadCredentialsException("��й�ȣ�� �ٽ� �ѹ� Ȯ���� �ּ���.");       
        } catch(UsernameNotFoundException e) {
            e.printStackTrace();
            throw new UsernameNotFoundException(e.getMessage());
        } catch(BadCredentialsException e) {
            e.printStackTrace();
            throw new BadCredentialsException(e.getMessage());
        } catch(Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
            throw new RuntimeException(e.getMessage());
        }
 
        return new UsernamePasswordAuthenticationToken(username, password, authorities);
    }
 

    public boolean supports(Class<?> arg0) {
        return true;
    }
}