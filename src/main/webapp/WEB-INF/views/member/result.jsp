<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/confetti_v2.js"></script>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Roboto&display=swap')
	;

* {
	text-align: center;
	font-family: 'Noto Sans KR', sans-serif;
}

#canvas {
	z-index: 10;
	pointer-event: none;
	position: fixed;
	top: 0;
	transform: scale(1.1);
}

.reImg {
	width: 300px;
}

.reBtn {
	width: 300px;
	height: 30px;
	padding: 25px;
	cursor: pointer;
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
	margin-top: 10px;
	border: 1px solid #65b836;
	color: #fff;
	background: #55a532 linear-gradient(#91dd70, #55ae2e);
	font-size: 20px;
	margin: auto;
	border-radius: 5px;
}
</style>
</head>
<body>
	<c:if test="${r=='성공'}">
		<form action="member.login.go">
			<canvas id="canvas"></canvas>
			<br /> <br />
			<h4>축하드립니다.</h4>
			<h4>회원가입에 성공하였습니다.</h4>
			<img src="resources/img/success.png" class="reImg"> <br>
			<br>
			<button class="reBtn">로그인 페이지로 이동</button>
			<br /> <br />
		</form>
	</c:if>
	<c:if test="${r=='실패'}">
		<form action="member.signUp.go">
			<br /> <br />
			<h4>죄송합니다.</h4>
			<h4>회원가입에 실패하였습니다.</h4>
			<img src="resources/img/fail.png" class="reImg"> <br> <br>
			<button class="reBtn">회원가입 페이지로 이동</button>
			<br /> <br />
		</form>
	</c:if>
	<c:if test="${r=='아이디조회성공'}">
		<form action="member.login.go">
			<h2>아이디 찾기</h2>
			<!-- 
			<c:forEach var="i" items="id">
				<h3>귀하의 아이디는 ${id }입니다.</h3>
				<button class="reBtn">로그인 페이지로 이동</button>
			</c:forEach> -->
			<h3>귀하의 아이디는 ${id }입니다.</h3>
			<br>
			<button class="reBtn">로그인 페이지로 이동</button>
		</form>
	</c:if>
	<c:if test="${r=='아이디조회실패'}">
		<script type="text/javascript">
			alert("이름 또는 이메일이 잘못 되었습니다.");
			location.href = "member.findID";
		</script>
	</c:if>
	<c:if test="${r=='아이디조회실패DB'}">
		<script type="text/javascript">
			alert("서버 문제로 인해 아이디 조회에 실패하였습니다.");
			location.href = "member.findID";
		</script>
	</c:if>
	<c:if test="${r=='비밀번호조회성공'}">
		<form action="member.login.go">
			<h2>비밀번호 찾기</h2>
			<h3>귀하의 비밀번호는 ${pw }입니다.</h3>
			<br>
			<button class="reBtn">로그인 페이지로 이동</button>
		</form>
		<br>
		<form action="member.changePw" method="POST">
			<button class="reBtn">비밀번호 변경 페이지로 이동</button>
		</form>
	</c:if>
	<c:if test="${r=='비밀번호조회실패' }">
		<script type="text/javascript">
			alert("이름 또는 이메일이 잘못 되었습니다.");
			location.href = "member.findPW";
		</script>

	</c:if>
	<c:if test="${r=='비밀번호조회실패DB' }">
		<script type="text/javascript">
			alert("서버 문제로 인해 비밀번호 조회에 실패하였습니다.");
			location.href = "member.findPW";
		</script>
	</c:if>
	<c:if test="${r=='로그인실패' }">
		<script type="text/javascript">
			alert("로그인에 실패하였습니다.");
			location.href = "member.login.fail";
		</script>
	</c:if>
	<c:if test="${r=='비번변경성공'}">
      <form action="member.login.go">
         <canvas id="canvas"></canvas>
         <br /> <br />
         <h4>축하드립니다.</h4>
         <h4>비밀번호변경에 성공하였습니다.</h4>
         <img src="resources/img/success.png" class="reImg" id="confetti" onload="reAction()"> <br>
         <br>
         <button class="reBtn">로그인 페이지로 이동</button>
         <br /> <br />
      </form>
   </c:if>
   <c:if test="${r=='비번변경실패'}">
      <form action="member.changePw">
         <br /> <br />
         <h4>죄송합니다.</h4>
         <h4>비밀번호 변경에 실패하였습니다.</h4>
         <img src="resources/img/fail.png" class="reImg"> <br> <br>
         <button class="reBtn">뒤로 가기</button>
         <br /> <br />
      </form>
   </c:if>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		function reAction() {
			$("#startButton").trigger("click");
			setTimeout(function() {
				$("#stopButton").trigger("click");
			}, 6000);
		}
		reAction();
	});
</script>
</html>