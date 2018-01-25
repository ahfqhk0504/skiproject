<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script >
	$(document).ready(function(){ 
		$(".clickEmailPw").click(function(){
			$(".nameGenderBirth").addClass("hide");
			$(".memberAddress").addClass("hide");
			$(".memberPone").addClass("hide");
			$(".emailPw").removeClass("hide");
		});
		
		$(".clickNameGenderBirth").click(function(){
			$(".emailPw").addClass("hide");
			$(".memberAddress").addClass("hide");
			$(".memberPone").addClass("hide");
			$(".nameGenderBirth").removeClass("hide");
		});
	
		
		$(".clickMemberAddress").click(function(){
			$(".nameGenderBirth").addClass("hide");
			$(".emailPw").addClass("hide");
			$(".memberPone").addClass("hide");
			$(".memberAddress").removeClass("hide");
		});
	
		
		$(".clickMemberPone").click(function(){
			$(".nameGenderBirth").addClass("hide");
			$(".memberAddress").addClass("hide");
			$(".emailPw").addClass("hide");
			$(".memberPone").removeClass("hide");
		});
	
		$(".memberShipBtn").click(function(){
			document.membershipForm.submit();
		});
	});
</script>
<style type="text/css">
	.membershipBody{
	    border: 1px solid blue;
	    width: 1000px;
	    height: 1000px;
	    position: absolute;
	}
	.memberShipBtnDiv{
		width: 100px;
   		display: inline-block;
    	height: 40px;
	}
	.memberDisplay{
		border: 1px solid red;
	    display: inline-block;
	    height: 300px;
	    width: 600px;
	    margin: 50px 70px;
	    position: absolute;
	}

	.membershipMenu{
		border: 1px solid red;
		display: inline-block;	
		width: 150px;
		height : 200px;
		margin-left: 671px;
   		margin-top: 50px;
	}
	.membershipMenu lable {
		cursor: pointer;
	}
	.emailPw input[type="password"]{
		width: 326px;
	    height: 42px;
	    border-radius: 8px;
	    color: #494949;
	    outline: none;
	    font-size: 30px;
	}
	.nameGenderBirth input[type="text"]{
		width: 326px;
	    height: 42px;
	    border-radius: 8px;
	    color: #494949;
	    outline: none;
	    font-size: 16px;
	}
	.memberAddress input[type="text"]{
		width: 326px;
	    height: 42px;
	    border-radius: 8px;
	    color: #494949;
	    outline: none;
	    font-size: 16px;
	}
	.memberPone input[type="text"]{
		width: 326px;
	    height: 42px;
	    border-radius: 8px;
	    color: #494949;
	    outline: none;
	    font-size: 16px;
	}
	#memberEmail1{
		width: 200px;
	    height: 42px;
	    border-radius: 8px;
	    color: #494949;
	    outline: none;
	    font-size: 17px;
	}
	#memberEmail2{
		width: 100px;
	    height: 42px;
	    border-radius: 8px;
	    color: #494949;
	    outline: none;
	    font-size: 17px;
	}
	
	.memberEmail1Td{
		width: 220px;
    	display: inline-block;
	}
	.memberEmail2Td{
		width : 100px;
		display: inline-block;
		margin-left : 3px;
	}
	.hide{
		display: none; 
	}
	.memberDisplay label{
		float: right;
	    margin-right: 228px;
	    margin-top: 116px;
	    cursor: pointer;
	}
	
	
</style>

<head>
</head>
<body>
<div class="membershipBody">
	<h3>회원가입</h3>
	<form name="membershipForm" method="post" action="/skiproject/member/membershipOk/">
		<div class="memberDisplay">
			<label><img src="https://user-images.githubusercontent.com/35482994/35262301-694560aa-0057-11e8-82b9-85b0306e1ca7.png"></label>
			<div class="emailPw">
				<table>
					<tr>
						<td class="memberEmail1Td"><input type="text" id="memberEmail1" placeholder="이메일" name="memberEmail1">@</td>
						<td class="memberEmail2Td"><input type="text" id="memberEmail2"  name="memberEmail2"></td>
					</tr>
					<tr>
						<td><input type="password" id="memberPassword" placeholder="비밀번호" name="memberPassword"></td>
					</tr>
					<tr>
						<td><input type="password" id="ReMemberPassword" placeholder="비밀번호 확인"></td>
					</tr>
				</table>
			</div>
			<div class="nameGenderBirth hide">
				<table>
					<tr><td><input type="text" placeholder="이름" name="memberName" ></td></tr>
					<tr><td><input type="text" placeholder="생일 ex)19900101" name="memberBirth"></td></tr>
					<tr><td><input type="text" placeholder="나이 숫자만 입력해주세요" name="memberPone"></td></tr>
				</table>
			</div>
			<div class="memberAddress hide">
				<table>
					<tr><td><input type="text" placeholder="우편번호" name="memberAddressNum" ></td></tr>
					<tr><td><input type="text" placeholder="주소" name="memberAddress1"></td></tr>
					<tr><td><input type="text" placeholder="상세 주소" name="memberAddress2"></td></tr>
				</table>
			</div>
			<div class="memberPone hide">
				<input type="text" placeholder="핸드폰" name="memberPone">
			</div>
		</div>
		<div class="membershipMenu">
			<table>
				<tr><td><lable class="clickEmailPw">이메일&비밀번호</lable></td></tr>
				<tr><td><lable class="clickNameGenderBirth">이름&성별&생일 </lable></td></tr>
				<tr><td><lable class="clickMemberAddress">주소</lable></td></tr>
				<tr><td><lable class="clickMemberPone">휴대폰</lable></td></tr>
			</table>
			<div class="memberShipBtnDiv">
				<input type="button" value="회원가입" class="memberShipBtn">
			</div>
		</div>
		
		<input type="hidden" value="1" class="displayNum" >
	</form>
</div>
</body>
</html>