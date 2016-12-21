package org.kdea.members;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import javax.mail.internet.MimeMessage.RecipientType;

@Service
public class EmailService {

    @Autowired
    protected JavaMailSender mailSender;

    public boolean sendMail(MemberVO email) throws Exception {
        try{
	        MimeMessage msg = mailSender.createMimeMessage();
	        InternetAddress addr = new InternetAddress("someone@paran.com");
	        msg.setFrom(addr); // 송신자를 설정해도 소용없지만 없으면 오류가 발생한다
	        

	        
	        if(email.getContent()==null||email.getContent().contains("이메일확인")) {   //회원가입시
	        	msg.setSubject(email.getSubject());
		        msg.setContent(email.getContent(),"text/html; charset=utf-8");
	        }else if(email.getContent().equals("비밀번호")){
	        	msg.setSubject("비밀번호 찾기 이메일 입니다.");
		        msg.setContent("<a href='http://192.168.2.4:8088/SNS/members/searchPwdUpdate?auth="+email.getSubject()+"'>이메일확인</a>","text/html; charset=utf-8");
	        }else if(email.getContent().equals("아이디")){ 
	        	msg.setSubject("아이디 찾기 요쳥 결과 입니다");
	        	msg.setText("회원님의 아이디 :"+email.getSubject());
	        }
	        
	        
	        
	        System.out.println("받는사람:"+email.getReceiver());
	        msg.setRecipient(RecipientType.TO , new InternetAddress(email.getReceiver()));
	     
	        mailSender.send(msg);
	        return true;
        }catch(Exception ex) {
        	ex.printStackTrace();
        }
        return false;
    }
    

}