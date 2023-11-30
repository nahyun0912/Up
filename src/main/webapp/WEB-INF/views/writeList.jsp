<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/go.js"></script>
<style type="text/css">
	a{
	text-decoration: none;
	color:gray;
}

.list{
	display:inline-block;
	float:left;
	margin : 30px 10px 0px 10px;
	
}
#mylist{
	display: flex;
  	justify-content: center;
	color:gray;
}
#li2{
	border-bottom:solid 3px #81D15F;
	padding-bottom:3px;
	margin-top:29px;
	
}

#u_write_chk{
	font-weight:bold;
	color:black;
	
}
#wl_h3{
	margin-top: 50px;
	font-size: 30px;
}
</style>
</head>
<body>
	<h3 id="wl_h3">마이페이지</h3>
	<br/>
	<div id ="mylist">
		<div class="list" id="li1"><a id ="u_update" href="member.mypage.go">회원정보 수정</a></div>
		<div class="list" id="li2"><a id="u_write_chk" href="member.writeList.go?u_id=${sessionScope.loginMember.u_id }">내가 쓴 글 보기</a></div>
		<div class="list" id="li3"><a id="u_bookmark" href="member.likeList.go?u_id=${sessionScope.loginMember.u_id }">내가 추가한 즐겨찾기</a></div>
	</div>
	
	<div class="board_wrap">
		<div class="board_title">
		</div>
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="top">
					<div class="num">번호</div>
					<div class="title">제목</div>
					<div class="writer">작성자</div>
					<div class="date">작성일</div>
					<div class="count">조회</div>
				</div>
				<c:forEach var="b" items="${mymsgs }">
					<div>
						<div class="num">${b.rn }</div>
						<div class="title">
							<a href="board.my.view.go?b_no=${b.b_no }">${b.b_title }</a>
						</div>
						<div class="writer">${b.b_writer}</div>
						<div class="date">
							<fmt:formatDate value="${b.b_regDate }" timeStyle="short"/>
						</div>
						<div class="count">1</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>