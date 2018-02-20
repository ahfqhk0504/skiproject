<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="passwordFindBady">
		<h3>비밀번호 찾기</h3>
		<div class="findContext">
			<form>
				<table>
					<tr><td><input type="text" placeholder="이메일을 입력해주세요" class="passwordFindEmail"></td>
							<td><input type="button" value="이메일 인증하기" class="passwordFindBtn"></td>
					</tr>
					<tr><td><input type="text" placeholder="변경하실 비밀번호" class="password"></td></tr>
					<tr><td><input type="text" placeholder="비밀번호 재확인 " class="passwordRe"></td></tr>
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