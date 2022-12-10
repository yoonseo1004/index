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
<title>호크아이 서비스 소개 페이지입니다</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap');
#section{
	background-image: url("image/back.png");	
}
</style>
<link rel="stylesheet" href="css/info.css">
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
				<div class="img_box">
					<img src="image/info_top.png"
				</div>
				<div class="text_box1">
					<h2>서비스 소개</h2>
				</div>
				<div class="text_box2">
					<h4>
						저희 호크아이는 딥러닝 얼굴 인식 학습을 통한 디지털 성범죄 피해물 검출 서비스로</br> 디지털 성범죄에 노출될
							우려가 있는 사용자를 대상으로 제공되는 무료 서비스입니다.</br> 온라인 상에 본인도 모르게 불법으로 유포된 사진이 있는지
							검색이 가능하며</br> 유출된 사이트의 사진과 주소를 검색 결과로 확인할 수 있으며 해당 사이트의</br> 신고페이지까지 원클릭으로
							접속할 수 있습니다.
						
					</h4>
				</div>
				
        <div class="box4">
        <div class="box5">
            <img src="/image/info_icon_01.png">
            <img src="/image/info_icon_02.png">
            <img src="/image/info_icon_03.png">           
        </div>
        <div class="box6">
            <div class="in"></div>
            <div class="in"></div>
            <div class="in"></div>
        </div>
        <div class="box7">
            <h4>Python selenium 을 활용한<br>데이터 크롤링</h4><h4>딥러닝 라이브러리를 이용한<br>얼굴 인식 유무 판별</h4><h4>디지털 성범죄 피해 촬영물을<br>검색 및 신고</h4>
        </div> 
         
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