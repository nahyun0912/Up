<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
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

#login-form {
	width: 440px;
	margin-top: 16px;
	margin-left: auto;
	margin-right: auto;
	padding-left: 0px;
}

#login-form li {
	margin-bottom: 17px;
}

#login-form li:last-child {
	margin-bottom: 0;
}

#login-form .input--text {
	width: 100%;
	height: 40px;
}

#login-form .caption {
	font-size: 12px;
	margin-top: 5px;
	color: rgba(255, 255, 255, .6);
	line-height: 1.5;
	text-align: center;
}

#login-form [type="submit"] {
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

.btn.btn--primary {
	margin-top : 10px;
	border: 1px solid #65b836;
	color: #fff;
	background: #55a532 linear-gradient(#91dd70, #55ae2e);
}

h3 {
	margin-top: 50px;
	text-align: center;
}

hr {
	background-color: #A9A9A9;
	margin-top: 30px;
}
.social{
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
.cookie{
	color: #A9A9A9;
	font-size: 15px;
	margin-left: 5px;
}
.check{
	accent-color : #91dd70;
	white-space: nowrap;
}
.label{
	font-size: 15px;
	display: inline-block;
	margin: 10px 20px;
	text-align: center;
	color: #A9A9A9;
}
.find{
	text-align: center;
}
#kakaoLogin{
	background-color: white;
	border: 0;
	color:#bbb;
	font-size: 15px;
	text-align: left;
}
</style>
</head>
<body>
	<form id="login-form" method="POST" action="member.login">
		<ul>
			<li><h3>로그인</h3></li>
			<li><input type="text" class="input--text"
				placeholder="아이디를 입력하세요." name="u_id" id="logId"></li>
			<li><input type="password" class="input--text"
				placeholder="비밀번호를 입력하세요" name="u_pw" id="logPw">
			</li>
			<li>
				<input type="checkbox" class="check"><label class="cookie">아이디 저장</label>	
			</li>
			<li>
				<button type="submit" class="btn btn--primary">로그인</button>
			</li>
			<li class="find"><a href="member.findID"><label class="label">아이디 찾기</label></a>
			<a href="member.findPW"><label class="label">비밀번호 찾기</label></a>
			<a href="member.signUp.go"><label class="label">회원가입</label></a></li>
			<li><hr></li>
		</ul>
	</form>
	<form id="login-form" method="post" action="member.successlogin">
		<ul>
			<li><p class="social">소셜 로그인</p></li>
			
			<li class="img">
				<div>
					<input type="hidden" id="kakao_u_id" name="u_id1" readonly="readonly">
					<input type="hidden" id="kakao_u_email" name="u_email1" readonly="readonly">
					<a href="javascript:kakaoLogin();"><img class="loginImg" src="resources/img/kakao1.png" alt="카카오계정 로그인"/></a>
					<br><br>
					<label style="font-size: 15px; float: left; margin-bottom: 0px; color: #aaa;">※카카오 로그인을 한 후 아래 버튼을 클릭하여주십시오.</label>
					<button type="submit" id="kakaoLogin">카카오 로그인</button>
				</div>
			</li>
			<!-- 
			<a href="javascript:kakaoLogout();">로그아웃</a><p>
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
                            
                            $('#kakao_u_id').val(res.id);
                            $('#kakao_u_email').val(res.kakao_account.email);
                            
                            $.ajax({
                            	url : "member.id.check?u_id="+userId,
                            	type : "post",
                            	//data : {userId : userId, userEmail : userEmail},
                            	success : function(mb) {
                            		//console.log(JSON.stringify(mb))
                            		var id = mb['member'][0]['u_id']
                            		if(id == $('#kakao_u_id').val(res.id)) {
                            			//window.location.href='member.successlogin'
                            		}
                            	}
                            });
                            
                            //console.log(kakao_account);
                            //console.log(res);
                            //alert(jsonData);
                            
                            //console.log(userId);
                            //console.log("userEmail", userEmail);
                            //console.log("userNickName", userNickName);
                            
                        }
                    });
                    //window.location.href='member.successlogin' //리다이렉트 되는 코드
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
	
	 $(function() {
         
         fnInit();
       
   });
   
   function frm_check(){
       saveid();
   }

  function fnInit(){
      var cookieid = getCookie("cookie");
      console.log(cookieid);
      if(cookieid !=""){
          $("input:checkbox[id='cookie']").prop("checked", true);
          $('#logId').val(cookieid);
      }
      
  }    

  function setCookie(name, value, expiredays) {
      var todayDate = new Date();
      todayDate.setTime(todayDate.getTime() + 0);
      if(todayDate > expiredays){
          document.cookie = name + "=" + escape(value) + "; path=/; expires=" + expiredays + ";";
      }else if(todayDate < expiredays){
          todayDate.setDate(todayDate.getDate() + expiredays);
          document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
      }
      
      
      console.log(document.cookie);
  }

  function getCookie(Name) {
      var search = Name + "=";
      console.log("search : " + search);
      
      if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면 
          offset = document.cookie.indexOf(search);
          console.log("offset : " + offset);
          if (offset != -1) { // 쿠키가 존재하면 
              offset += search.length;
              // set index of beginning of value
              end = document.cookie.indexOf(";", offset);
              console.log("end : " + end);
              // 쿠키 값의 마지막 위치 인덱스 번호 설정 
              if (end == -1)
                  end = document.cookie.length;
              console.log("end위치  : " + end);
              
              return unescape(document.cookie.substring(offset, end));
          }
      }
      return "";
  }

  function saveid() {
      var expdate = new Date();
      if ($("#cookie").is(":checked")){
          expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30);
          setCookie("cookie", $("#logId").val(), expdate);
          }else{
         expdate.setTime(expdate.getTime() - 1000 * 3600 * 24 * 30);
          setCookie("cookie", $("#logId").val(), expdate);
           
      }
  }
    </script>
</body>
</html>