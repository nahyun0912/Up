<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Roboto&display=swap')
	;

* {
	font-family: 'Noto Sans KR', sans-serif;
	font-family: 'Roboto', sans-serif;
	display: center;
	margin: 5px;
}

#find-form {
	width: 440px;
	margin-top: 16px;
	margin-left: auto;
	margin-right: auto;
	padding-left: 0px;
}

#find-form li {
	margin-bottom: 17px;
}

#find-form li:last-child {
	margin-bottom: 0;
}

#find-form .input--text {
	width: 100%;
	height: 40px;
}

#find-form .caption {
	font-size: 12px;
	margin-top: 5px;
	color: rgba(255, 255, 255, .6);
	line-height: 1.5;
	text-align: center;
}
ul {
	list-style: none;
	padding-left: 0px;
}

.input--text {
	height: 34px;
	padding: 0 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-sizing: border-box;
	outline: none;
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.075);
	font-size: 16px;
}

.input--text:focus {
	border-color: #51a7e8;
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.075), 0 0 5px
		rgba(81, 167, 232, 0.5);
}

/* Vendor Prefix(브라우저 업체별 접두사) */
.input--text::-webkit-input-placeholder {
	color: #A9A9A9;
}

.input--text::-ms-input-placeholder {
	color: #A9A9A9;
}

.input--text::-moz-input-placeholder {
	color: #A9A9A9;
}

.findBtn{
	width: 100%;
	height: 62px;
	margin-top: 10px;
	border: 1px solid #65b836;
	color: #fff;
	background: #55a532 linear-gradient(#91dd70, #55ae2e);
	font-size: 20px;
	border-radius: 5px;
}

h2 {
	margin-top: 50px;
	text-align: center;
	font-weight: normal;
}
</style>
</head>
<body>
	<form id="find-form" method="GET" action="member.goResultPW" name="signForm" onsubmit="return checkValid();">
		<ul>
			<li><h2>비밀번호 찾기</h2></li>
			<li><input type="text" class="input--text"
				placeholder="아이디를 입력하세요." id="u_id" maxlength="10" name="u_id"></li>
			<li><input type="text" class="input--text"
				placeholder="핸드폰 번호를 입력하세요 (-를 제외하고 입력해주세요)" id="u_tel" name="u_tel"></li>
			<li>
				<button class="findBtn">비밀번호 찾기</button>
			</li>
		</ul>
	</form>
</body>
</html>