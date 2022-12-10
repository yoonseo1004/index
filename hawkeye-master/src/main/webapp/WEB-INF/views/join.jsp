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
<title>호크아이 회원가입 페이지입니다</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap');
#section{
	background-image: url("image/back.png");	
}
</style>
<link rel="stylesheet" href="css/join.css">
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
				<div class="joinbox">
					<div class="joinbox1">
						<img src="image/join_left_image.png">
					</div>
					<div class="joinbox2">
						<form action="/create"  method="post">
							<label>
								<h2>Sign Up</h2>
							</label><br>
							<table>
								<tr>
									<td style="text-align: left">Id</td>
									<td><input type="text" class="form-control" name="memid"></td>
								</tr>
								<tr>
									<td>password</td>
									<td><input type="password" class="form-control" name="mempw"></td>
								</tr>
								<tr>
									<td style="text-align: left">nickname</td>
									<td><input type="text" class="form-control"  name="nick"></td>
								</tr>
								<tr>
									<td colspan="2"><input type="submit" value="회원가입"></td>
								</tr>
							</table>
						</form>
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