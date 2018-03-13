package member.bean;

import lombok.Data;

@Data
public class MemberDTO {
	private String memberEmail;//이메일
	private String memberPassword; //비밀번호
	private String memberName; //이름
	private String memberBirth; //생년월일
	private String memberPhone; //핸드폰
	private String memberAddressNum; // 우편번호
	private String memberAddress1; // 상세 주소1
	private String memberAddress2; // 상세 주소2

}
