<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>비밀번호 찾기 결과</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/findIdFormResult_style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="searchWrap">
	<!-- 아이디 찾기 헤더 -->
	<div class="popHeaderWrap">
		<h1 class="popTitle">
			<span>비밀번호 찾기</span>
		</h1>
	</div>
	<!-- 콘텐츠 시작 -->
	<div class="contentsWrap">
		<!-- 아이디 비번 탭 -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-6">				
					<button type="button" class="btn btn-secondary">아이디 찾기</button>
				</div>	
				<div class="col">	
					<button type="button" class="btn btn-danger">비밀번호 찾기</button>
				</div>
			</div>
		</div>
		<!-- 아이디 찾기 결과 -->
		<div class="findIdWrap">
			<div>
				<h3><b>아이디 찾기 결과</b></h3>
			</div>
			<div>
				<div class="form-check">
  					<div>새 비밀번호</div>
  					<input class="form-control" placeholder="새 비밀번호" type="password" aria-label="default input example">
  					<div>새 비밀번호확인</div>
  					<input class="form-control" placeholder="새 비밀번호 확인" type="password" aria-label="default input example">
				</div>
			</div>
			<button type="button" class="btn btn-danger" onclick="popupClose()" style="margin-top: 30px;">로그인</button>
		</div>
	</div><!-- contentesWrap end -->
</div><!-- searchWrap end -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
<script>
	function popupClose(){
		window.close()
	}
</script> 
</body>
</html>