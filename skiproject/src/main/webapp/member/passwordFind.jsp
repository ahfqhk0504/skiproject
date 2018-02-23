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
	var code;
	$(".passwordFindBtn").click(function(){
		$.ajax({
			url : "/skiproject/member/passwordFindEmail",
			type:"POST",
			data: {"memberEmail": $(".passwordFindEmail").val(),
					"memberName": $(".passwordFindName").val()},
			dataType : "json",
			success : function(data){
				$(".emailMsg").removeClass("hide");
				$(".emailMsg").css("color",data.color);
				$('#hiddenEmail').val(data.emailval);
				$(".emailMsg").html(data.msg);
				$(".hiddenMail").val($(".passwordFindEmail").val());
				code = data.code;
				console.log(data.code);
			}//success
		});//ajax  
	});
	$("#CertifiedBtn").click(function(){
		if($("#CertifiedNum").val()==code){
			$(".inputTable").addClass("hide");
			$(".failure").addClass("hide");
			$(".modiPassword").removeClass("hide");
		}else{
			$(".failure").removeClass("hide");
		}
	});
	$(".passwordModiBtn").click(function(){
		
		document.passwordModiForm.submit();
		
	});
});

</script>
<style type="text/css">

	  .explanation{
	    	margin-left: 55px;
	    }
	   .explanation h4{
	    color: #6d63ec;
	    }
	    .findContext {
    		display: inline-block;
		    height: 300px;
		    width: 338px;
		    margin-top: 15px;
		    margin-left: 70px;
	    }

	    .findContext input[type="text"]{
   	        width: 326px;
		    height: 42px;
		    border-radius: 8px;
		    color: #494949;
		    outline: none;
		    font-size: 16px;
	   	}
	   	.password{
	   		 width: 326px;
		    height: 42px;
		    border-radius: 8px;
		    color: #494949;
		    outline: none;
		    font-size: 16px;
	   	}
	   	.passwordRe{
	   		width: 326px;
		    height: 42px;
		    border-radius: 8px;
		    color: #494949;
		    outline: none;
		    font-size: 16px;
	   	}
	    
	    .passwordFindBtn{
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
	    #CertifiedNum{
	    	
	    	width: 215px;
		    height: 42px;
		    border-radius: 8px;
		    color: #494949;
		    outline: none;
		    font-size: 16px;
	    }
	    #CertifiedBtn{
    		width: 104px;
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
	.hide{
		display: none;
	}
	.emailMsg{
		width: 326px;
	    height: 42px;
	    text-align: center;
	    font-size: 18px;
	    line-height: 40px;
	}
	.passwordModiBtn{
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

</style>

<body>
	<div class="passwordFindBady">
		<h3>비밀번호 찾기</h3>
		<div class="explanation"><h4>WeSki 는 이메일 인증을 통해 비밀번호를 찾아드리고 있습니다.</h4></div>
		<div class="findContext">
			
				<table class="inputTable">
					<tr><td><input type="text" placeholder="이름을을 입력해주세요" class="passwordFindName"></td></tr>
					<tr><td><input type="text" placeholder="이메일을 입력해주세요" class="passwordFindEmail" ></td></tr>
					<tr><td><div class="emailMsg hide"></div></td></tr>
					<tr><td><input type="button" value="이메일 인증하기" class="passwordFindBtn"></td></tr>
					<tr>
						<td style="display :inline-block;"><input type="text" placeholder="인증번호" id="CertifiedNum">
						<input type="button" value="인증하기" id="CertifiedBtn"></td>
					</tr>
				</table>
				<div class="modiPassword hide" >
					<h4>인증이 완료 되었습니다 변경하실 비밀번호를 입력해주세요.</h4>
					<form name="passwordModiForm"" method="post" action="/skiproject/member/passwordModiOk">
					<table>
						<tr><td><input type="password" placeholder="변경하실 비밀번호" class="password" name="memberPassword"></td></tr>
						<tr><td><input type="password" placeholder="비밀번호 재확인 " class="passwordRe"></td></tr>
						<tr><td><input type="button" value="비밀번호 변경하기" class="passwordModiBtn"></td></tr>
						<input type="hidden" name="memberEmail" class="hiddenMail">
					</table>
					</form>
				</div>
				<div class="failure hide" >
					<h4>인증번호가 일치하지 않습니다 다시 확인해 주세요.</h4>
				</div>
			
		</div>
	</div>
</body>
</html>