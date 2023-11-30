<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
<script type="text/javascript" src="resources/js/ValidCheck.js"></script>
<script type="text/javascript" src="resources/js/LeeValidChecker.js"></script>
<link rel="stylesheet" href="resources/css/css.css">
<style type="text/css">
.n_no {
	width: 160px;
}

.n_title {
	width: 640px;
}

.n_date {
	width: 200px;
}

header .btn-group .sign-in {
	padding-left: 10px;
	padding-right: 10px;
	margin-right: 4px;
	margin-top: 10px;
	border-radius: 5px;
	margin-bottom: 10px;
	font-size: 16px;
}

header .btn-group .sign-up {
	padding-left: 10px;
	padding-right: 10px;
	margin-right: 4px;
	margin-top: 10px;
	border-radius: 5px;
	margin-bottom: 10px;
	font-size: 16px;
}
</style>
</head>
<body>


	<div class="board_wrap">
		<div class="board_title">
			<strong>공지사항</strong>
		</div>
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="top">
					<div class="n_no">번호</div>
					<div class="n_title">제목</div>
					<div class="n_date">작성일</div>
				</div>
				<div>
					<div class="n_no">1</div>
					<div class="n_title">
						<a href="member.notice.view1">개인정보 처리방침 변경안내</a>
					</div>
					<div class="n_date">2022.6.18</div>
				</div>
				<div>
					<div class="n_no">2</div>
					<div class="n_title">
						<a href="member.notice.view2">홈페이지 이용 가이드</a>
					</div>
					<div class="n_date">2022.6.14</div>
				</div>
				<div>
					<div class="n_no">3</div>
					<div class="n_title">
						<a href="member.notice.view3">[회원가입,로그인]로그인 상태 유지</a>
					</div>
					<div class="n_date">2022.5.27</div>
				</div>
				<div>
					<div class="n_no">4</div>
					<div class="n_title">
						<a href="member.notice.view4">
네트워크 점검시간 안내</a>
					</div>
					<div class="n_date">2022.5.15</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>