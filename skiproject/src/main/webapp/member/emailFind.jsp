<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script >
	$(document).ready(function(){
		$(".emailFindBtn").click(function(){
			var memberName = $(".emailFindName").val();
			var memberBirth= $(".emailFindBirth").val();
			var memberPhone= $(".emailFindPhone").val();
			$.ajax({
				url : "/skiproject/member/emailFindAjax",
				type:"POST",
				data: {"memberName":memberName,
					"memberBirth":memberBirth,
					"memberPhone":memberPhone},
				dataType : "json",
				success : function(data){
					$(".emailTextTd").html(data.FindEmail);
					if(data.Check!=("no")){
						alert("들어옴");
						$(".Btn").removeClass("hide");
					} 
				}//success
			});//ajax  
		});
		$(".loginBtn").click(function(){
			window.location.href="http://localhost:8080/skiproject/member/login?memberEmail="+$(".emailTextTd").html()+"";
		});
		$(".pwFindBtn").click(function(){
			window.location.href="http://localhost:8080/skiproject/member/passwordFind?memberEmail="+$(".emailTextTd").html()+"";
		});
		
	});
</script>
<style type="text/css">
	.emailFindBady{
		    width: 1000px;
		    height: 1000px;
		    position: absolute;
	}
	.findContext{
		    display: inline-block;
		    height: 300px;
		    width: 338px;
		    margin-top: 50px;
		    margin-left: 70px;
	}
	.findOk{
		   display: inline-block;
		    height: 300px;
		    width: 450px;
		    font-size: 20px;
	}
	
	    
	  .findContext  input[type="text"]{
	    	width: 326px;
		    height: 42px;
		    border-radius: 8px;
		    color: #494949;
		    outline: none;
		    font-size: 16px;
	    }
	    .emailFindBtn{
  		    width: 328px;
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
	.findOk input[type="button"]{
			    width: 164px;
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
	.emailText{
		width: 164px;
		height: 42px;
		text-align: center;
	}
	.hide{
		display: none; 
	}
</style>
<body>
	<div class="emailFindBady">
		<h3>이메일 찾기</h3>
		<div class="findContext">
			<form>
				<table>
					<tr><td><input type="text" placeholder="이름을 입력해주세요" class="emailFindName"></td></tr>
					<tr><td><input type="text" placeholder="생년월일 ex)19900101" class="emailFindBirth"></td></tr>
					<tr><td><input type="text" placeholder="휴대폰 번호 - 없이"  class="emailFindPhone"></td></tr>
					<tr><td><input type="button" value="이메일 찾기" class="emailFindBtn"></td></tr>
				</table>
			</form>
		</div>
		<div class="findOk">
			<table>
				<tr class="emailText" ><td colspan="2" class="emailTextTd" ></td></tr>
				<tr class="Btn hide"><td><input type="button" value="로그인" class="loginBtn"></td > <td><input type="button" value="비밀번호 찾기" class="pwFindBtn"></td></tr>
			</table>
		</div>
	</div>
</body>
</html>