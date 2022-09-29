<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>아이디 찾기</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="../css/member/findIdForm_style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="searchWrap">
	<!-- 아이디 찾기 헤더 -->
	<div class="popHeaderWrap">
		<h1 class="popTitle">
			<span>아이디 찾기</span>
		</h1>
	</div>
	<!-- 콘텐츠 시작 -->
	<div class="contentsWrap">
		<!-- 아이디 비번 탭 -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-6">				
					<button type="button" class="btn btn-danger">아이디 찾기</button>
				</div>	
				<div class="col">	
					<button type="button" class="btn btn-secondary">비밀번호 찾기</button>
				</div>
			</div>
		</div>
		<!-- 아이디 찾기 영역 -->
		<div class="idsearchWrap">
			<!-- 알림 -->
			<div class="notiArea">
				<span>아이디를 찾을 방법을 선택해주세요.</span>
			</div>
			<div class="searchType">
				<span>등록된 휴대폰번호로 찾기</span>
				<input class="form-control" type="text" placeholder="이름" aria-label="default input example">
				<input class="form-control" type="text" placeholder="휴대폰번호(-없이 입력)" aria-label="default input example">
			</div>
			<button type="button" class="btn btn-danger" onclick="location.href='findIdFormResult.html'">확인</button>
		</div>
	</div><!-- contentesWrap end -->
</div><!-- searchWrap end -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
<!-- <script>
	function popup(){
		var url="findIdFormResult.html"
		var option="width=500px;"
		window.open(url,"",option)
	}
</script> -->
</body>
</html>