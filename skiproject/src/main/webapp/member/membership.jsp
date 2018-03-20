<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script >
	$(document).ready(function(){ 
		/*  /[ \{\}\[\]\/?.,;:|\)*~`!^\-_+┼<>@\#$%&\'\"\\\(\=]/gi; 특수문자 제한 정규식
		/[^a-zA-Z0-9_]/; 영어,숫자정규식 /[^a-z0-9_-]/;
		/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;  이메일 정규식
		8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.
		 */
		
		var code;
		var msg;
		var sc =/[ \{\}\[\]\/?.,;:|\)*~`!^\-_+┼<>@\#$%&\'\"\\\(\=]/gi;
		var en =/^[a-z0-9_-]{5,20}$/;
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
		var notKor = /^[ㄱ-ㅎㅏ-ㅣ가-힣]{8,20}$/g;
		var checkPw = /^(?=.*[a-zA-Z])(?=.*[\~\․\!\@\#\$\%\^\&\*\(\)\_\-\+\=\[\]\|\\\;\:\\'\"\<\>\,\.\?\/])(?=.*[0-9]).{8,16}$/;
		var name = /^[a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣| |]{2,20}$/;
		var name2 = /^[a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣]{2,20}$/;
		var phone = /^01([0|1|6|7|8|9])([0-9]{7,8})$/;
		var brt = /^([0-2{1}])(0|1|9{1})(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))$/;
		
		


		
	

		
		$(".memberShipBtn").click(function(){
			
			document.membershipForm.submit();
		});
		$("#emailAuthentication").click(function(){
			var memberEmail=$("#memberEmail1").val()+"@"+$("#memberEmail2").val();
			if(regExp.test(memberEmail)==false){
				$(".warningDiv").css("color","#d83636");
				$(".warningDiv").html("이메일을 다시한번 확인해 주세요");
				return;
			}
			
			$("#emailAuthenticationCodeBtn").attr("disabled",false);
			$("#memberEmail1").attr("readonly",true);
			$("#memberEmail2").attr("readonly",true);
			
			
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
					msg = data.msg;
					console.log(data.code);
					alert(msg);
					if(data.msg=="ok"){
						$(".warningDiv").css("color","#409b57");
						$(".warningDiv").html("인증번호가 해당 이메일로 전송되었습니다.");
					}else{
						$(".warningDiv").css("color","#d83636");
						$(".warningDiv").html("전송 불가능한 이메일입니다.");
					}
					/* 이메일이 발송되었습니다.
					이메일 전송실패. */
				}//success
			});//ajax  
		});
		$("#emailAuthenticationCodeBtn").click(function(){

				if($("#emailAuthenticationCode").val()==code){
					
					$("#hiddenEmail").val("ok");
					$("#emailAuthenticationCodeBtn").val("인증 완료");
					$("#emailAuthenticationCodeBtn").css("background-color","#409b57");
					$("#memberEmail1").attr("readonly",false);
					$("#memberEmail2").attr("readonly",false);
					alert("인증완료");
				}else{
					alert("응 아니야");
					$("#emailAuthenticationCodeBtn").css("background-color","#d83636");
					$("#memberEmail1").attr("readonly",false);
					$("#memberEmail2").attr("readonly",false);
				}
		});
	
		$("#memberEmail1").keyup(function(){
			if(en.test($("#memberEmail1").val())==false){
				$(".warningDiv").css("color","#d83636");
				$(".warningDiv").html("	공백 없이 5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
			}else{
				$(".warningDiv").css("color","#409b57");
				$(".warningDiv").html("사용가능한 이메일 입니다.");
			}
		});
		$("#memberPassword").keyup(function(){
			if(checkPw.test($("#memberPassword").val())==false){
				$(".warningDiv").css("color","#d83636");
				$(".warningDiv").html("8~16자 영문 대 소문자, 숫자, 특수문자를 &nbsp; &nbsp;필수로 사용해주세요.");
			}else{
				$(".warningDiv").css("color","#409b57");
				$(".warningDiv").html("사용가능한 비밀번호 입니다.");
			}
		});
	$("#reMemberPassword").keyup(function(){
		var eml = $("#memberPassword").val();
		var reml = $("#reMemberPassword").val();
		if(eml.length==reml.length ){
			if(eml == reml){
				$(".warningDiv").css("color","#409b57");
				$(".warningDiv").html("비밀번호 재확인 완료.");
			}else{
				$(".warningDiv").css("color","#d83636");
				$(".warningDiv").html("비밀번호와 재확인이 일치하지 않습니다");
			} 
		}
		}); 
	$("#memberName").keyup(function(){
		var nameleng = $("#memberName").val();
		
		
		if(nameleng.length==2){
			
			if(name2.test($("#memberName").val())==false){
				$(".warningDiv").css("color","#d83636");
				$(".warningDiv").html("이름은 한글 , 영문 2~20 글자 이내로입력해 주세요 두글자이하는 공백을 사용하실수 없습니다.");
			}else{
				$(".warningDiv").css("color","#409b57");
				$(".warningDiv").html("멋진 이름이네요 ");
			}
		}else{
			if(name.test($("#memberName").val())==false){
				$(".warningDiv").css("color","#d83636");
				$(".warningDiv").html("이름은 한글 , 영문 2~20 글자 이내로입력해 주세요");
			}else{
				$(".warningDiv").css("color","#409b57");
				$(".warningDiv").html("멋진 이름이네요 ");
			}
		}
	});
	$("#memberPhone").keyup(function(){
		if(phone.test($("#memberPhone").val())==false){
				$(".warningDiv").css("color","#d83636");
				$(".warningDiv").html("올바른 휴대폰 번호를 입력해주세요");
			}else{
				$(".warningDiv").css("color","#409b57");
				$(".warningDiv").html("사용가능한 번호 입니다. ");
			}
	});
	
	$("#memberBirth").keyup(function(){
		if(brt.test($("#memberBirth").val())==false){
				$(".warningDiv").css("color","#d83636");
				$(".warningDiv").html("올바른 생년월일을 입력해주세요");
			}else{
				$(".warningDiv").css("color","#409b57");
				$(".warningDiv").html("멋진날 태어나셨군요~ ");
			} 
	});
	
	});
</script>
<style type="text/css">
	.membershipBody{
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
	    display: inline-block;
	    height: 700px;
	    width: 400px;
	    margin: 50px 0px 2px 70px;
	    position: relative;
	}
	.warningDiv{
	    display: inline-block;
	    height: 200px;
	    width: 420px;
	    position: absolute;
	    margin-top: 62px;
	    font-size: 21px;
	   	color: #d83636;
	}
	.memberDisplay input[type="text"]{
		width: 326px;
	    height: 42px;
	    border-radius: 8px;
	    color: #494949;
	    outline: none;
	    font-size: 16px;
	}
	.memberDisplay input[type="password"]{
		width: 326px;
	    height: 42px;
	    border-radius: 8px;
	    color: #494949;
	    outline: none;
	    font-size: 30px;
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
    #emailAuthenticationCodeBtn:active{
    	position:relative;
		top:3px;
    } 
    #emailAuthentication:active{
    	position:relative;
		top:3px;
    }
    .memberShipBtn{
	   	width: 330px;
	    height: 42px;
	    border-radius: 8px;
	    color: #ffffff;
	    font-size: 14px;
	    outline: none;
	    border: 0;
	    outline: 0;
	    cursor: pointer;
	    background-color: #d83636;
    }
	.memberShipBtn:active{
    	position:relative;
		top:3px;
    }
    
   
</style>

<head>
</head>
<body>
<div class="membershipBody">
	<h3>회원가입</h3>
	<form name="membershipForm" method="post" action="/skiproject/member/membershipOk/">
		<div class="memberDisplay">
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
					<tr><td><input type="password" id="memberPassword" placeholder="비밀번호" name="memberPassword"></td></tr>
					<tr><td><input type="password" id="reMemberPassword" placeholder="비밀번호 확인"></td></tr>
					<tr><td><input type="text" id="memberName"placeholder="이름" name="memberName" ></td></tr>
					<tr><td><input type="text" id="memberBirth" placeholder="생일 ex)19900101" name="memberBirth"></td></tr>
					<tr><td><input type="text" placeholder="우편번호" name="memberAddressNum" ></td></tr>
					<tr><td><input type="text" placeholder="주소" name="memberAddress1"></td></tr>
					<tr><td><input type="text" placeholder="상세 주소" name="memberAddress2"></td></tr>
					<tr><td><input type="text" id="memberPhone" placeholder="핸드폰" name="memberPhone"></td></tr>
					<tr><td><input type="button" value="회원가입" class="memberShipBtn"></td></tr>
				</table>
			</div>
			<div class="warningDiv">여기에 경고문구가 뜬다</div>
		<input type="hidden"  id="hiddenEmail" >
		<input type="hidden"  id="hiddenCode" >
		<input type="hidden" id="tableNum" value="0">
	</form>
</div>
</body>
</html>