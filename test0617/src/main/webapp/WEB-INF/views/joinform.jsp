<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style_header.css">
<link rel="stylesheet" type="text/css"
	href="css/style_join02_info_input.css">
<link rel="stylesheet" type="text/css" href="css/style_footer.css">
<title>회원가입 - 회원정보입력</title>
</head>
<body>
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<c:import url="/WEB-INF/views/includes/nav.jsp"></c:import>
	<section>
		<form name="agree" method="get" action="join03_success.html">
			<div id="subBanner"></div>
			<div id="locationN">
				<ul>
					<li>HOME</li>
					<li>회원가입</li>
					<li>회원정보입력</li>
				</ul>
			</div>

			<div id="sub_top_area">
				<h3>회원가입</h3>
			</div>

			<h4>
				필수 정보 입력 <span>(* 항목은 필수 항목입니다.)</span>
			</h4>
			<fieldset class="fieldset_class">
				<dl id="join_name_dl">
					<dt>
						<div></div>
						<label for="name">이름</label>
					</dt>
					<dd>
						<input type="text" id="name" name="name" required />
					</dd>
				</dl>
				<dl id="join_id_dl">
					<dt>
						<div></div>
						<label for="id">아이디</label>
					</dt>
					<dd>
						<input type="text" id="id" name="id" required /> 
						<input type="button" value="중복확인" /> 
						<span>4~16자리의 영문, 숫자만 사용하실 수 있습니다.</span> 
						<span>첫 글자는 영문으로 입력해 주세요.</span>
					</dd>
				</dl>
				<dl id="join_pw1_dl">
					<dt>
						<div></div>
						<label for="pw1">비밀번호</label>
					</dt>
					<dd>
						<input type="password" id="pw1" name="pw1" required />
						<span>영문, 숫자만 사용가능</span>
					</dd>
				</dl>
				<dl id="join_pw2_dl">
					<dt>
						<div></div>
						<label for="pw2">비밀번호 확인</label>
					</dt>
					<dd>
						<input type="password" id="pw2" name="pw2" minlength="8" required />
						<span>비밀번호를 다시 한번 입력해 주세요.</span>
					</dd>
				</dl>
				
				<dl id="join_mail_dl">
					<dt>
						<div></div>
						<label for="mail_id">이메일</label>
					</dt>
					<dd>
						<input type="text" id="mail_id" name="mail_id" required />
					</dd>
				</dl>

				<dl id="join_address_dl">
					<dt>
						<div></div>
						<label for="">주소</label>
					</dt>
					<dd>
						<p><input type="text" id="f_postal" name="f_postal" required /> <span>우편번호</span>
						<p><input type="text" id="address1" name="address1" required /> <span>주소</span>
						<p><input type="text" id="address2" name="address2" required /> <span>상세주소</span>
					</dd>
				</dl>

				<dl id="join_tell_dl">
					<dt>
						<div></div>
						<label for="f_tell">휴대전화</label>
					</dt>
					<dd>
						<input type="text" id="f_tell" name="f_tell" required />
						<span></span>
				    </dd>
				</dl>
				
				<dl id="join_birth_dl">
					<dt>
						<div></div>
						<label for="pw1">생년월일</label>
					</dt>
					<dd>
						<input type="birth_year" id="birth_year" name="birth_year" required />
						<span>숫자만 사용가능 ex)911203</span>
					</dd>
				</dl>
				
	</fieldset>

			
			<div id="info_input_button">
				<input type="reset" value="취소하기" /> <input type="submit"
					value="가입하기" />
			</div>

		</form>
	</section>
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>
</html>