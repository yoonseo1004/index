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
<title>호크아이 크롤링 데이터 페이지 입니다</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap');
#section{
	background-image: url("image/back.png");		
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="css/crawling.css">
<script type="text/javascript">
	$(document).ready(function(){
		
		var pageForm=$("#pageForm");
		$(".paginate_button a").on("click", function(e){
			e.preventDefault();
			var page = $(this).attr("href");
			pageForm.find("#page").val(page);
			pageForm.submit();
		});
		
		$(".move").on("click", function(e){
			e.preventDefault();
			var cr_seq = $(this).attr("href");
			var tag = "<input type='hidden' name='cr_seq' value='"+cr_seq+"'>";
			pageForm.append(tag);
			pageForm.attr("action", "${cpath}/crawling");
			pageForm.submit();
		});
	});

</script>
<script>
function clickEvent(){
	alert('로그인 후 이용가능합니다.');
	
}
</script>
</head>
<body>
    <div class="container-fluid">

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
          <article>
            <h2><i>크롤링 데이터</i></h2>
            <div class="box_top">
                <table class="table table-striped table-hover">
                
                    <thead>
                    <tbody class="table-group-divider">
                      <tr>
                        <th scope="col">No.</th>
                        <th scope="col">사진 파일</th>
                        <th scope="col">출처 url</th>
                        <th scope="col">신고하기</th>
                      </tr>
                    </thead>
                    
                    <c:forEach var="photo" items="${photo}" varStatus="status">
                    	<tr>
                    		<th scope="row"><c:out value="${status.count}" /></th>
                    		<td><img  src="${photo.cr_file}"></td>
                    		<!--<td><img  src="${photo.cr_file}"></td>-->
                    		<td><a href="${photo.cr_url}">${photo.cr_url}</td>
                    		<td><button type="button" class="btn btn-primary"><a href="https://gall.dcinside.com/index.php/singo/?id=singo" target="_black">신고하기</a></button></td>
                    	</tr>
                    </c:forEach>
                   
                    </tbody>
                  </table>
                </div>
                
           	<!-- 페이징 처리 -->
  		<div style="text-align: center;">
  		<nav aria-label="Page navigation example">
  		 <ul class="pagination">
  		
  		<!-- 이전 버튼 -->
  		<c:if test="${pageMaker.prev}">
  			<li class="page-item paginate_button previous"><a href="${pageMaker.startPage-1}">◀</a></li>
  		</c:if>
  		
  		<!-- 페이지 번호 출력 -->
  		<c:forEach var="pageNum" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
  			<li class="page-item paginate_button ${pageMaker.cri.page==pageNum ? 'active' : ' '}"><a href="${pageNum}">${pageNum}</a></li>
  		</c:forEach>
  		
  		<!-- 다음 버튼 -->
  		<c:if test="${pageMaker.next}">
  			<li class="page-item paginate_button previous"><a href="${pageMaker.endPage+1}">▶</a></li>
  		</c:if>
		</ul>
		</nav>
  		</div>
  		
  		<form id="pageForm" action="${cpath}/crawling" method="get">
  			<input type="hidden" id="page" name="page" value="${pageMaker.cri.page}"/>
  			<input type="hidden" name="perPageNum" value="${pageMaker.cri.perPageNum}"/>
  		</form>
  		<!-- 페이징 처리 -->
                
          </article>
      </section>

      <!-- footer -->
      <footer>
          <div class="info">
              <h4>서비스 이용약관 | 제휴 문의 | 고객센터</a></h4>
              <h5>Copyright © Hawkeye. All rights reserved.</h5>
          </div>

      </footer>
  </div>
</body>
</html>