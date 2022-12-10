<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>호크아이 메인 페이지입니다</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap');
#section{
	background-image: url("image/back.png");	
}

</style>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/HeadandFoot.css">
</head>
<body>
<script>
function clickEvent(){
	alert('로그인 후 이용가능합니다.');
	
}
</script>

	<div class="container">

		<!-- header -->
		<header>
			<a href="${cpath}/main"><img src="image/logo.png"></a>
			<nav>
				<ul>
					<li><a href="${cpath}/main"><i>Main</i></a></li>
					<li><a href="${cpath}/info"><i>About</i></a></li>
					<c:if test="${empty vo}">
					<li><a href="${cpath}/login" onclick=clickEvent();><i>Search </i></a></li>
					<li><a href="${cpath}/login"><i>Login</i></a></li>
					<li><a href="${cpath}/join"><i>Sign up</i></a></li>
					</c:if>
					<c:if test ="${!empty vo}">
					<li><a href="${cpath}/uplode"><i>Search </i></a></li>
					<li><a href="${cpath}/logout"><i>Logout</i></a></li>
					<li><i><h5>${vo.memid}님 환영합니다</h5></i></li>
					</c:if>
				</ul>
			</nav>
		</header>

		<!-- center -->
		<section id="section">
			<aside></aside>
			<article>
				<div class="content">
					<div class="slides">
						<div class="slide_item">
							<img src="image/main_01.png">
						</div>
					</div>
				</div>

				<div class="box2">
					<h1>디지털 범죄 불법 촬영물 검출 신고 서비스</h1>
					<br>
					<h2>
						"호크아이 <img src="image/eye.png"> 입니다"
					</h2>
					<c:if test="${empty vo}">
					<button type="button" onclick=clickEvent(); location.href='${cpath}/uplode';  style='cursor:pointer;'>START</button>
					</c:if>
					
					<c:if test="${!empty vo}">
					<button type="button" onclick="location.href='${cpath}/uplode'" style='cursor:pointer;'>START</button>
					</c:if>
				</div>
			</article>
			<aside></aside>
		</section>

		<!-- footer -->
		<footer>
			<div class="info">
				<h4>
					서비스 이용약관 | 제휴 문의 | 고객센터</a>
				</h4>
				<h5>Copyright © Hawkeye. All rights reserved.</h5>
			</div>

		</footer>
	</div>
</body>
</html>