<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<body id="page-top">  
 <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">WESKI</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
    </nav>
	 
 <header class="masthead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-10 mx-auto" style="margin-bottom: 50px;">
            <h1 class="text-uppercase">
              <strong style="color:#666;">WESKI 관리자 로그인</strong>
            </h1>
          </div>
          <div class="col-lg-8 mx-auto">
			<div class="loginbox">
				<ul class="mrtop50"></ul>
				<form id="adminLoginForm" name="adminLoginForm" method="post" action="/skiproject/admin/login">
					<input type="text" placeholder="관리자 아이디" id="admin_member_id" name="adminId" class="emailinpt martop0">
					<div id="adminIdDiv"></div>
					<div class="forgot"><input type="password" id="admin_member_pwd" name="adminPwd" placeholder="비밀번호"><a href="#"></a></div>
					<div id="adminPwdDiv"></div>
					<input type="button" value="로그인" class="minbut" id="admin_loginB">
				</form>
			</div>
          </div> 
        </div>
      </div>
    </header>
    
</body>    

<script type="text/javascript">
	$(document).ready(function(){
		
		$('#admin_member_id').keyup(function(){
			if($(this).val().length==0){
				$('#adminIdDiv').html('<div class="wrong rightm">no blank</div>');
			}else{
				$('#adminIdDiv').text("");
			} 
		});
		
		$('#admin_member_pwd').keyup(function(){
			if($(this).val().length==0){
				$('#adminPwdDiv').html('<div class="wrong rightm">no blank</div>');
			}else{
				$('#adminPwdDiv').text("");
			}
		});
		
		$('#admin_loginB').click(function(){
			if($('#admin_member_id').val().length==0){
				$('#adminIdDiv').html('<div class="wrong rightm">no blank</div>');
			}
			
			if($('#admin_member_pwd').val().length==0){
				$('#adminPwdDiv').html('<div class="wrong rightm">no blank</div>');
			}
			
			if($('#admin_member_id').val().length !=0 && 
					$('#admin_member_pwd').val().length!=0){
				$.ajax({
					type: "POST",
					url: "/skiproject/admin/login",
					data: {"adminId" :$("#admin_member_id").val(), 
							"adminPwd" :$("#admin_member_pwd").val() },
					dataType: "text",
					success: function(data){
						if(data == "fail"){
							$("#adminPwdDiv").html('<div class="wrong rightm">아이디 또는 비밀번호를 확인해주세요.</div>');
						}else{
							document.adminLoginForm.submit();
						}	
					}
				});
			}
			
		});
	});
</script>
<link rel="stylesheet"  href="../css/style.css">