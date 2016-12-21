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
	        msg.setFrom(addr); // �۽��ڸ� �����ص� �ҿ������ ������ ������ �߻��Ѵ�
	        

	        
	        if(email.getContent()==null||email.getContent().contains("�̸���Ȯ��")) {   //ȸ�����Խ�
	        	msg.setSubject(email.getSubject());
		        msg.setContent(email.getContent(),"text/html; charset=utf-8");
	        }else if(email.getContent().equals("��й�ȣ")){
	        	msg.setSubject("��й�ȣ ã�� �̸��� �Դϴ�.");
		        msg.setContent("<a href='http://192.168.2.4:8088/SNS/members/searchPwdUpdate?auth="+email.getSubject()+"'>�̸���Ȯ��</a>","text/html; charset=utf-8");
	        }else if(email.getContent().equals("���̵�")){ 
	        	msg.setSubject("���̵� ã�� �䫊 ��� �Դϴ�");
	        	msg.setText("ȸ������ ���̵� :"+email.getSubject());
	        }
	        
	        
	        
	        System.out.println("�޴»��:"+email.getReceiver());
	        msg.setRecipient(RecipientType.TO , new InternetAddress(email.getReceiver()));
	     
	        mailSender.send(msg);
	        return true;
        }catch(Exception ex) {
        	ex.printStackTrace();
        }
        return false;
    }
    

}