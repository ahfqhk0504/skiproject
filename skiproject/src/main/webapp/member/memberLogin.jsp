<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.login_title h3{
		margin-left: 210px;
		margin-top : 250px;
	}
	.login_main{
		width : 800px;
		height : 1000px;
		position: relative;
		margin : 0 auto;
	}
	.login_top{
		margin : 0 auto;
		width: 500px;
		height: 105px;
		padding: 10px;
	}
	.login_top input{
		display : block;
		width: 344px;
		height: 20px;
		padding: 15px 15px;
   		border: 1.5px solid #e6e6e6;
   		-webkit-box-shadow: 0 0 0 1000px white inset;
   		 outline: none;
   		 color: #555555;
   		 margin-left: 58px;
   	
	}
	.login_top input:focus{
	border : 2px solid ;
	border-color: #FAE57C;
     color: #555555;
     font-size: 13px;
   	 line-height: 1.5438;
    }
    .login_remember{
    	display: inline-block;
    	width: 327px;
    	height : 20px;
    	float: right;
    	color: #878787 !important;
    	font-size: 12px !important;
    }
    .login_button{
    	width: 376px;
		height: 102px;
		display: inline-block;
		margin-left: 212px;
		margin-top: 10px;
		
    }
    .login_btn{
	    display: block;
	    width: 100%;
	    height :52px;
	    color: #fff;
	    background-color: #4d4d4d;
	    border-radius: 10px;
	    font-size: 15px;
	    outline: none;
    }
    .member_find{
    	margin-top :5px;
    	float:left;
    	text-decoration: none;
    	color: #4d4d4d;
    	font-size: 13px !important;
    	
    }
    .member_write{
   	 	margin-top :12px;
    	float:right;
    	font-size: 13px !important;
    	text-decoration: none;
    	color: #4d4d4d;
    }
    .login_bottom {
    	display: block;
    	margin : 0 auto;
		width: 376px;
    	height: 52px;
		border : 1.5px solid #e6e6e6;
		
    }
    .naver_login{
    	display:inline-block;
    	width : 100%;
    	height : 100%;
   		text-decoration: none;
   		color: #4d4d4d;
   	 	background-color: #fff;
    	border-color: #e6e6e6;
    	text-align: center;
   		 line-height: 50px;
    }
    .naver_img{
    	width : 20px;
    	height : 20px;
    }

</style>

</head>

<body>

<div class="login_main">
	<div class="login_title">
		<h3>로그인</h3>
	</div>
	<div class="login_top">
		<table >
			<tr><td><input type="text" class="e_mail"  required="required" placeholder="이메일" ></td></tr>
			<tr><td><input type="password" class="password" placeholder="비밀번호"></td></tr>
		</table>
	</div>
	<div class="login_remember">
			<input type="checkbox">
			<span>로그인 기억하기</span>
		</div>
	
		
	<div class="login_button">
		<input type="button"  class="login_btn" value="로그인">
		<a href="#" class="member_find">아이디/비밀번호 찾기</a> 
		<a href="#" class="member_write">무료 회원가입</a>
	</div>
	<div class="login_bottom">
		<a href="#" class="naver_login"><img src="../memberImg/naver.jpg"/>네이버로 시작하기</a>
	</div>
</div>
</body>
</html>