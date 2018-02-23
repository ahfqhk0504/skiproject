package member.email;

import lombok.Data;

@Data
public class Email {
	 private String subject;//제목
	 private String content;//내용
	 private String receiver;//받는사람

}
