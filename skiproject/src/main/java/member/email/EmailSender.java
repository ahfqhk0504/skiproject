package member.email;


import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
   
    public class EmailSender  {
    	

    	@Autowired
    	protected JavaMailSender mailSender;
    	public String SendEmail(Email email) throws Exception {
    		MimeMessage msg = mailSender.createMimeMessage();// 기본 JavaMail 세션
    		String emilmsg="ok";
    		try {
    			/*Email.java에서 정보를 get해서 보내주는 역할*/
    			msg.setSubject(email.getSubject());
    			msg.setText(email.getContent());
    			msg.setRecipients(RecipientType.TO, InternetAddress.parse(email.getReceiver()));//발신자 타입, 발신자 이메일

    		}catch(MessagingException e) {
    			System.out.println("MessagingException발생");
    			e.printStackTrace();
    			emilmsg="no";
    		}try {
    			mailSender.send(msg);
    		}catch(MailException e) {
    			System.out.println("MailException발생");
    			e.printStackTrace();
    			emilmsg="no";
    		}
    		return emilmsg;
    	}
    }


