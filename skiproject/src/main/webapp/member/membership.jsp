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
	
	
		
	});
</script>
<style type="text/css">
	.membershipBody{
	    border: 1px solid blue;
	    width: 1000px;
	    height: 1000px;
	    position: absolute;
	}
	.memberDisplay{
		border: 1px solid red;
	    display: inline-block;
	    height: 300px;
	    width: 600px;
	    margin: 50px 70px;
	}

	.membershipMenu{
		border: 1px solid red;
		display: inline-block;	
		width: 150px;
		height : 200px;
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
	
</style>

<head>
</head>
<body>
<div class="membershipBody">
	<h3>회원가입</h3>
	<form>
		<div class="memberDisplay">
			<div class="emailPw">
				<table>
					<tr>
						<td class="memberEmail1Td"><input type="text" id="memberEmail1" placeholder="이메일" >@</td>
						<td class="memberEmail2Td"><input type="text" id="memberEmail2"></td>
					</tr>
					<tr>
						<td><input type="password" id="memberPassword" placeholder="비밀번호"></td>
					</tr>
					<tr>
						<td><input type="password" id="ReMemberPassword" placeholder="비밀번호 확인"></td>
					</tr>
				</table>
			</div>
			<div class="nameGenderBirth hide">
				이름 생일 나이
			</div>
			<div class="memberAddress hide">
				주소
			</div>
			<div class="memberPone hide">
				휴대폰
			</div>
		</div>
		<div class="membershipMenu">
			<table>
				<tr><td><lable class="clickEmailPw">이메일&비밀번호</lable></td></tr>
				<tr><td><lable class="clickNameGenderBirth">이름&성별&생일 </lable></td></tr>
				<tr><td><lable class="clickMemberAddress">주소</lable></td></tr>
				<tr><td><lable class="clickMemberPone">휴대폰</lable></td></tr>
			</table>
		</div>
	</form>
</div>
</body>
</html>