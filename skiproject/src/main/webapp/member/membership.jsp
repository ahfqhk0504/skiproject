<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script >
	$(document).ready(function(){ 
		var code;
		$(".clickEmailPw").click(function(){
			$("#tableNum").val(0);
			$(".nameGenderBirth").addClass("hide");
			$(".memberAddress").addClass("hide");
			$(".memberPone").addClass("hide");
			$(".emailPw").removeClass("hide");
			$(".nextBtn").css("margin-top",$(".displayTable0").height()-39);
		});
		
		$(".clickNameGenderBirth").click(function(){
			var tableNum1;
			$("#tableNum").val(1);
			$(".emailPw").addClass("hide");
			$(".memberAddress").addClass("hide");
			$(".memberPone").addClass("hide");
			$(".nameGenderBirth").removeClass("hide");
			$(".nextBtn").css("margin-top",$(".displayTable1").height()-39);
			
		});
		
		$(".clickMemberAddress").click(function(){
			$("#tableNum").val(2);
			
			$(".nameGenderBirth").addClass("hide");
			$(".emailPw").addClass("hide");
			$(".memberPone").addClass("hide");
			$(".memberAddress").removeClass("hide");
			$(".nextBtn").css("margin-top",$(".displayTable2").height()-39);
		});
		
		$(".clickMemberPone").click(function(){
			$("#tableNum").val(3);
			$(".nameGenderBirth").addClass("hide");
			$(".memberAddress").addClass("hide");
			$(".emailPw").addClass("hide");
			$(".memberPone").removeClass("hide");
			
			$(".nextBtn").css("margin-top",$(".displayTable3").height()-39);
		});
	
		$(".memberShipBtn").click(function(){
			
			document.membershipForm.submit();
		});
		$("#emailAuthentication").click(function(){
			var memberEmail=$("#memberEmail1").val()+"@"+$("#memberEmail2").val();
			$("#emailAuthenticationCodeBtn").css("background-color","#409b57");
			$("#emailAuthenticationCodeBtn").attr("disabled",false);
			
			
			if($("#memberEmail2").val()==("naver.com")){
		  		  console.log("네이버 입니다.");
		  		  window.open('https://www.naver.com ',"", "width=1200 height=600 left=300 top=300 scrollbars=yes"); 
			}else if($("#memberEmail2").val()==("hanmail.net")){
		  		  console.log("다음 입니다.");
		  		  window.open('http://www.daum.net ',"", "width=1200 height=600 left=300 top=300 scrollbars=yes"); 
			}else if($("#memberEmail2").val()==("gmail.com")){
				 console.log("구글 입니다.");
				 window.open('http://www.google.com',"", "width=1200 height=600 left=300 top=300 scrollbars=yes"); 
			}else if($("#memberEmail2").val()==("nate.com")){
				 console.log("네이트 입니다.");
				 window.open('http://www.nate.com',"", "width=1200 height=600 left=300 top=300 scrollbars=yes"); 
			}
			
		$.ajax({
				url : "/skiproject/member/checkEmail",
				type:"POST",
				data: {"memberEmail":memberEmail},
				dataType : "json",
				success : function(data){
					$('#hiddenEmail').val(data.emailval);
					//$('#hiddenCode').val(data.code);//히든코드를 인증번호를 넣음
					code = data.code;
					console.log(data.code);
				}//success
			});//ajax  
		});
		$("#emailAuthenticationCodeBtn").click(function(){

				if($("#emailAuthenticationCode").val()==code){
					$("#memberEmail1").attr("readonly",true);
					$("#memberEmail2").attr("readonly",true);
					$("#hiddenEmail").val("ok");
					alert("인증완료");
				}else{
					alert("응 아니야");
				}
		});
		$(".nextBtn").click(function(){
			/* alert($("#tableNum").val());
			alert($(".displayTable0").offset().top);
			alert($(".displayTable0").height()); */
			
			
			
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
	.nextBtn{
		float: right;
	    margin-right: 228px;
	    margin-top: 217px;
	    cursor: pointer;
	}
	
	#emailAuthentication{
			width: 326px;
		    height: 42px;
		    border-radius: 8px;
		    color: #494949;
		    font-size : 15px;
		    border : 0;
	    	outline: 0;
	    	cursor: pointer;
	}
	#emailAuthenticationCodeTd{
		width: 204px;
		display: inline-block;
	}
	#emailAuthenticationCode{
		width: 204px;
	    height: 42px;
	    border-radius: 8px;
	    color: #494949;
	    outline: none;
	    font-size: 17px;
	}
	#emailAuthenticationCodeBtnTd{
		width: 104px;
		display: inline-block;
		margin-left: 18px;
	}
	#emailAuthenticationCodeBtn{
		width: 104px;
	    height: 42px;
	    border-radius: 8px;
	    color: #ffffff;
		font-size: 14px;
	    outline: none;
	    border : 0;
	    outline: 0;	
	    cursor: pointer;
	    background-color: #d83636;
    }
</style>

<head>
</head>
<body>
<div class="membershipBody">
	<h3>회원가입</h3>
	<form name="membershipForm" method="post" action="/skiproject/member/membershipOk/">
		<div class="memberDisplay">
			<label class="nextBtn"><img src="https://user-images.githubusercontent.com/35482994/35262301-694560aa-0057-11e8-82b9-85b0306e1ca7.png"></label>
			<div class="emailPw">
				<table class="displayTable0">
					<tr>
						<td class="memberEmail1Td"><input type="text" id="memberEmail1" placeholder="이메일" name="memberEmail1">@</td>
						<td class="memberEmail2Td"><input type="text" id="memberEmail2"  name="memberEmail2"></td>
					</tr>
					<tr>
						<td ><input type="button" id="emailAuthentication"  name="emailAuthentication" value="이메일 인증번호 발송!"></td>
					</tr>
					<tr>
						<td id="emailAuthenticationCodeTd"><input type="text" id="emailAuthenticationCode"  name="emailAuthenticationCode"  placeholder="이메일 인증 코드"></td>
						<td id="emailAuthenticationCodeBtnTd"><input type="button" id="emailAuthenticationCodeBtn"  name="emailAuthenticationCodeBtn" value="이메일 인증" disabled="true"></td>
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
				<table class="displayTable1">
					<tr><td><input type="text" placeholder="이름" name="memberName" ></td></tr>
					<tr><td><input type="text" placeholder="생일 ex)19900101" name="memberBirth"></td></tr>
					<tr><td><input type="text" placeholder="나이 숫자만 입력해주세요" name="memberPone"></td></tr>
				</table>
			</div>
			<div class="memberAddress hide">
				<table class="displayTable2">
					<tr><td><input type="text" placeholder="우편번호" name="memberAddressNum" ></td></tr>
					<tr><td><input type="text" placeholder="주소" name="memberAddress1"></td></tr>
					<tr><td><input type="text" placeholder="상세 주소" name="memberAddress2"></td></tr>
				</table>
			</div>
			<div class="memberPone hide">
				<table class="displayTable3">
					<tr><td><input type="text" placeholder="핸드폰" name="memberPone"></td></tr>
				</table>
			</div>
		</div>
		<div class="membershipMenu">
			<table class="displayTable">
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
		<input type="hidden"  id="hiddenEmail" >
		<input type="hidden"  id="hiddenCode" >
		<input type="hidden" id="tableNum" value="0">
	</form>
</div>
</body>
</html>