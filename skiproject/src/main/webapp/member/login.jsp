<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script>
	$(document).ready(function(){
		$(".memberEmail").val("${memberEmail}");
		//로그인 버튼
		$("#loginBtn").click(function(){
			if($(".memberEmail").val()==""){
				$(".ment").html("이메일을 입력해주세요.");
				$(".mentDiv").slideDown(300);
			}else if($(".memberPassword").val()==""){
				$(".ment").html("비밀번호를 입력해주세요");
				$(".mentDiv").slideDown(300);
			}else{
				 $.ajax({
						url:"/skiproject/member/loginOk",
						data: {"memberEmail" :$(".memberEmail").val(),
								 "memberPassword" : $(".memberPassword").val()},
						type:"POST",
						dataType:"json",
						success:function(data){
							$(".ment").html(data.Notice);
							$(".mentDiv").slideDown(300);
							if(data.idCheck==1){
								document.loginForm.submit();
							}
						}
				 });
			}
		});
		
		//회원가입 버튼
		$("#memberShipBtn").click(function(){
			window.location.href="http://localhost:8080/skiproject/member/membership"
		});
		//이메일 찾기 버튼
		$("#emailFindBtn").click(function(){
			window.location.href="http://localhost:8080/skiproject/member/emailFind"
		});
		//비밀번호 찾기 버튼
		$("#passwordFindBtn").click(function(){
			window.location.href="http://localhost:8080/skiproject/member/passwordFind"
		});
		
	});
	
</script>
<style type="text/css">
.loginMain h1{
	color : #39597f;
}
.loginMain{
	    width: 850px;
	    height: 600px;
	    position: absolute;
}
.loginBackguround{
	background-color: #94ebf2;
    height: 330px;
    padding-top: 10px;
}

.loginBackguround ul{
	display: inline-block;
    margin: 0px;
    padding: 0px;
    float: left;
    margin-left: 210px;
    margin-top: 30px;
    list-style: none;
}

.loginBackguround input[type="text"]{
		 width: 300px;
	    height: 30px;
	    border-radius: 8px;
	    color: #494949;
	    outline: none;
	    display: inline-block;
}
.loginBackguround input[type="password"]{
		margin-top:10px;
		 width: 300px;
	    height: 30px;
	    border-radius: 8px;
	    color: #494949;
	    outline: none;
	    display: inline-block;
}
.loginBackguround a{
	    display: block;
}
.weskiBtn{
    font-weight: bold;
    background-color: #39597f;
    color: #fff;
    border-radius: 8px;
    margin-left: 5px;
}
.memberShip{
	margin-top: 23px;
    color: #fff;
    font-size: 18px;
    margin-left: 40px;
    font-weight: bold;
}
.idPw{
	margin-top: 15px;
    color: #fff;
    font-size: 18px;
    font-weight: bold;
    margin-left: 40px;
}
.loginLine2{
	border : 2px solid #fff;
	display: block;
}
.loginLine1{
		border : 1px solid #fff;
		display: block;
}
 .mentDiv{
	margin-top : 15px;
	text-align: center;
	color : #39597f;
	display: none;
}
.hide {
	display : none;
}
</style>
<body>
<div class="loginMain">
	
	<h1>WeSki</h1>	
	<div class="loginBackguround">
		<div class="loginLine2"></div>
		<div class="loginLine1" style="margin-top:1.5px;"></div>
		<form class="loginForm" method="post" action="/skiproject/main/index" name="loginForm">
			<ul>
				<li><input type="text" placeholder="위스키 이메일" name="memberEmail" class="memberEmail"> </li>
				<li><input type="password" placeholder="비밀번호" name="memberPassword" class="memberPassword"> </li>
				<li class="mentDiv">	<div class="ment" >해당 아이디를 찾을수 없습니다</div></li>
			</ul>
		</form>
		<a>
			<input type="button" value="로그인" class="weskiBtn" id="loginBtn"style="margin-left: 20px;  font-size: 20px; margin-top: 30px; width: 110px; height: 80px;">
		</a>
		<div class="loginLine1" style="margin-top:55px;"></div>
		<div class="memberShip">아직도 WeSki 회원이 아니신가요? 가입하시고 다양한 혜택을 누리세요 <input type="button" value="회원 가입" class="weskiBtn" id="memberShipBtn"></div>
		<div class="idPw">이메일, 비밀번호를 잊으셨나요? 아이디 비밀번호 찾기를 이용해보세요	<input type="button" value="이메일 찾기" class="weskiBtn" id="emailFindBtn">
		<input type="button" value="비밀번호 찾기" class="weskiBtn" id="passwordFindBtn"></div>
	</div>
	<div class="loginBottom">
	
	</div>
</div>
</body>
</html>