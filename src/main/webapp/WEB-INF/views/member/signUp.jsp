<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
<script type="text/javascript" src="resources/js/ValidCheck.js"></script>
<script type="text/javascript" src="resources/js/LeeValidChecker.js"></script>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Roboto&display=swap')
	;

* {
	font-family: 'Noto Sans KR', sans-serif;
	font-family: 'Roboto', sans-serif;
	display: center;
	margin: auto;
}

#sign-form {
	width: 440px;
	margin-top: 16px;
	margin-left: auto;
	margin-right: auto;
	padding-left: 0px;
}

#sign-form li {
	margin-bottom: 17px;
}

#sign-form li:last-child {
	margin-bottom: 0;
}

#sign-form .input--text {
	width: 100%;
	height: 40px;
}

#sign-form .caption {
	font-size: 12px;
	margin-top: 5px;
	color: rgba(255, 255, 255, .6);
	line-height: 1.5;
	text-align: center;
}

#sign-form [type="submit"] {
	width: 100%;
	height: 62px;
	padding: 0 25px;
	font-size: 20px;
	justify-content: center;
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

.btn_signUp {
	width:100%;
	height:62px;
	margin-top : 10px;
	border: 1px solid #65b836;
	color: #fff;
	background: #55a532 linear-gradient(#91dd70, #55ae2e);
	font-size: 20px;
	border-radius: 5px;
}

h3 {
	margin-top: 50px;
	text-align: center;
}

hr {
	background-color: #A9A9A9;
	margin-top: 30px;
}
p{
	margin-top : 20px;
	margin-bottom : 0px;
	text-align: center;
	font-size: 20px;
	color: #A9A9A9;
}
.loginImg{
   width: 100%;
   height:62px;
   margin: 0px;
   text-align : center;
   display: inline-block;
}
.img{
	text-align : center;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
	<form id="sign-form" method="POST" action="member.signup" name="signForm" onsubmit="return checkValid();">
		<ul>
			<li><h3>회원가입</h3></li>
			<li><input type="text" class="input--text"
				placeholder="아이디를 입력하세요." id="u_id" maxlength="10" name="u_id"></li>
			<li><input type="password" class="input--text"
				placeholder="비밀번호를 입력하세요" id="u_pw" maxlength="15" name="u_pw"></li>
			<li><input type="password" class="input--text"
				placeholder="비밀번호를 확인하세요" id="u_repw" maxlength="15" name="u_repw"></li>
			<li><input type="text" class="input--text"
				placeholder="이름을 입력하세요" id="u_name" maxlength="5" name="u_name"></li>
			<li><input type="text" class="input--text"
				placeholder="닉네임을 입력하세요" id="u_nickname" maxlength="10" name="u_nickname"></li>
			<li><input type="email" class="input--text"
				placeholder="이메일을 입력하세요" id="u_email" name="u_email"></li>
			<li><input type="text" class="input--text"
				placeholder="핸드폰 번호를 입력하세요 (-를 제외하고 입력해주세요)" id="u_tel" name="u_tel"></li>
			<li><input type="text" class="input--text"
				placeholder="우편번호를 입력하세요" id="u_addr1" name="u_addr1"></li>
			<li><input type="text" class="input--text"
				placeholder="기본주소" id="u_addr2" readonly="readonly" name="u_addr2"></li>
			<li><input type="text" class="input--text"
				placeholder="상세주소" id="u_addr3" name="u_addr3"></li>
			<li>
				<button class="btn_signUp">회원가입</button>
			</li>
			<li><hr></li>
	</form>
	<form id="login-form" method="post" action="member.kakaoMypage.go">
		<ul>
			<li><p class="social">소셜 로그인</p></li>
			
			<li class="img">
				<div>
					<input type="hidden" id="kakao_u_id" name="u_id1" readonly="readonly">
					<input type="hidden" id="kakao_u_email" name="u_email1" readonly="readonly">
					<a type="submit" href="javascript:kakaoLogin();"><img class="loginImg" src="resources/img/kakao1.png" alt="카카오계정 로그인"/><a>
					<button type="submit" class="btn btn--primary">회원정보수정으로 이동</button>
				</div>
			</li>
			<!-- 
			<a href="javascript:kakaoLogout();">로그아웃</a><p>
			<a href="javascript:secession();">회원탈퇴</a>
			 -->
		</ul>
		</form>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script type="text/javascript">
		window.Kakao.init('a266bd566b053cb95981ebbdec81fc81');
		function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                    console.log(response) // 로그인 성공하면 받아오는 데이터
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                            const kakao_account = res.kakao_account;
                           	var userId = res.id
                           	var userEmail = res.kakao_account.email
                            var userNickName = res.profile_nickname
                            //var jsonData = JSON.stringify(kakao_account)
                            
                            console.log(kakao_account);
                            //console.log(res);
                            //alert(jsonData);
                            $('#kakao_u_id').val(res.id);
                            $('#kakao_u_email').val(res.kakao_account.email);
                            console.log(userId);
                            console.log("userEmail", userEmail);
                            console.log("userNickName", userNickName);
                        }
                    });
                   	 alert("카카오 로그인은 회원정보를 수정해야합니다");
                   	 //window.location.href='member.mypage.go' //리다이렉트 되는 코드
                   	 
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
		
		window.Kakao.init('a266bd566b053cb95981ebbdec81fc81');
		function kakaoLogout() {
	    	if (!Kakao.Auth.getAccessToken()) {
			    console.log('Not logged in.');
			    return;
		    }
		    Kakao.Auth.logout(function(response) {
	    		alert(response +' logout');
			    window.location.href='member.successlogout'
		    });
	};
	
	function secession() {
		Kakao.API.request({
	    	url: '/v1/user/unlink',
	    	success: function(response) {
	    		console.log(response);
	    		//callback(); //연결끊기(탈퇴)성공시 서버에서 처리할 함수
	    		window.location.href='member.delMember'
	    	},
	    	fail: function(error) {
	    		console.log('탈퇴 미완료')
	    		console.log(error);
	    	},
		});
	};
	</script>
</body>
</html>