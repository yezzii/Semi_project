package security;

import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class PasswordEmail {
	String user = "hujik1234@gmail.com";
	String password = "";
	
	public String sendEmail(String to) throws Exception{
		
		String result = "fail";
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", 587);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		
		Session session = Session.getDefaultInstance(prop, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		
		//인증코드 생성
		Random ran = new Random();
		
		StringBuffer buffer = new StringBuffer();
		for(int i = 0; i<6; i++) {
			if(ran.nextBoolean()) {
				buffer.append(((int)(ran.nextInt(10))));
			}else {
				buffer.append((char)((int)(Math.random()*26)+65));
			}
		}
		MimeMessage message = new MimeMessage(session);
		message.setFrom(new InternetAddress(user));
		
		
		//수신자 메일주소
		message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		
		//Subject
		message.setSubject("비밀번호 찾기 메일입니다."); //메일 제목
		
		//Text
		message.setText("임시 비밀번호는 ["+buffer+"] 입니다.");
		
		Transport.send(message);
		
		System.out.println("메일 보냄");
		
		return result = buffer.toString();
	}
}
